store Application {
  /* The previous lesson. */
  state previousLesson : Maybe(Lesson) = Maybe::Nothing

  /* The next lesson. */
  state nextLesson : Maybe(Lesson) = Maybe::Nothing

  /* The current lesson. */
  state lesson : Lesson =
    {
      contents = <></>,
      solution = "",
      category = "",
      source = "",
      title = "",
      path = ""
    }

  /*
  The original source code of the lesson - it's used to check if the
  solution is the source.
  */
  state originalSource : String = ""

  /* The URL of the preview. */
  state previewURL : String = ""

  /* The source of the solution. */
  state solution : String = ""

  /* The source what is displayed currently. */
  state source : String = ""

  /* Sets the lesson to the given one. */
  fun setLesson (lesson : Lesson) {
    sequence {
      load(lesson)

      next
        {
          previousLesson = Lessons.previousLesson(lesson),
          nextLesson = Lessons.nextLession(lesson),
          lesson = lesson
        }
    }
  }

  /* Loads the lesson files. */
  fun load (lesson : Lesson) {
    sequence {
      sourceResponse =
        lesson.source
        |> Http.get()
        |> Http.send()

      solutionResponse =
        lesson.solution
        |> Http.get()
        |> Http.send()

      next
        {
          originalSource = sourceResponse.body,
          solution = solutionResponse.body,
          source = sourceResponse.body
        }

      updateSource(source)
    } catch {
      next {  }
    }
  }

  /* Updates the source code and compiles it to get the preview URL. */
  fun updateSource (value : String) {
    sequence {
      next { source = value }

      data =
        encode {
          files =
            [
              {
                contents = value,
                path = "Main.mint"
              }
            ]
        }

      compileResponse =
        "http://localhost:3002/compile"
        |> Http.post()
        |> Http.jsonBody(data)
        |> Http.send()

      Url.revokeObjectUrl(previewURL)

      next { previewURL = Url.createObjectUrlFromString(compileResponse.body, "text/html") }
    } catch {
      next {  }
    }
  }
}
