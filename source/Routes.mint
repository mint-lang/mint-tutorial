routes {
  * (path : String) {
    sequence {
      path =
        Window.url().path

      lesson =
        Array.find((lesson : Lesson) { lesson.path == path }, Lessons:ITEMS)

      case (lesson) {
        Maybe::Nothing => Window.navigate("/introduction/adding-data")
        Maybe::Just item => Application.setLesson(item)
      }
    }
  }
}
