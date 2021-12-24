store Application {
  /* The previous lesson. */
  state previousLesson : Maybe(Lesson) = Maybe::Nothing

  /* The next lesson. */
  state nextLesson : Maybe(Lesson) = Maybe::Nothing

  /* The contents of each file. */
  state values : Map(String, String) = Map.empty()

  /* The currently shown file. */
  state activeFile : String = ""

  /* The current lesson. */
  state lesson : Lesson =
    {
      contents = <></>,
      category = "",
      files = [],
      title = "",
      path = ""
    }

  /* The URL of the preview. */
  state previewURL : String = ""

  /* Sets the currently shown file. */
  fun setFile (path : String) {
    next { activeFile = path }
  }

  /* Sets the lesson to the given one. */
  fun setLesson (lesson : Lesson) {
    nextActiveFile =
      Maybe.map((lesson : LessonFile) { lesson.path }, lesson.files[0])

    next
      {
        previousLesson = Lessons.previousLesson(lesson),
        nextLesson = Lessons.nextLession(lesson),
        activeFile = nextActiveFile or "",
        lesson = lesson,
        values =
          Map.fromArray(
            for (file of lesson.files) {
              ({file.path, file.contents})
            })
      }

    compile()
  }

  /* Shows the soltion of the current lesson. */
  fun showSolution {
    next
      {
        values =
          Map.fromArray(
            for (file of lesson.files) {
              ({
                file.path, if (String.isNotBlank(file.solution)) {
                  file.solution
                } else {
                  file.contents
                }
              })
            })
      }

    compile()
  }

  /* Updates the source code of a file and compiles to get the preview URL. */
  fun updateValue (path : String) {
    (value : String) {
      if (Map.getWithDefault(path, "", values) == value) {
        next { }
      } else {
        next { values = Map.set(path, value, values) }
        DEBOUNCED_COMPILE()
      }
    }
  }

  /* Debounced version of the compile function. */
  const DEBOUNCED_COMPILE = Function.debounce(500, compile)

  /* Compiles the current state ito get the preview URL. */
  fun compile : Promise(Void) {
    data =
      encode {
        files =
          for (path, contents of values) {
            {
              contents = contents,
              path = path
            }
          }
      }

    // await "https://mint-sandbox-compiler.herokuapp.com/compile"
    compileResponse =
      await "http://localhost:3003/compile"
      |> Http.post()
      |> Http.jsonBody(data)
      |> Http.send()

    Url.revokeObjectUrl(previewURL)

    case (compileResponse) {
      Result::Ok(response) =>
        next { previewURL = Url.createObjectUrlFromString(response.body, "text/html") }

      Result::Err =>
        next { }
    }
  }
}
