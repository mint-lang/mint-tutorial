routes {
  * (path : String) {
    let path =
      Window.url().path

    let lesson =
      Array.find(Lessons:ITEMS, (lesson : Lesson) { lesson.path == path })

    case (lesson) {
      Maybe::Nothing => Window.navigate("/introduction")
      Maybe::Just(item) => Application.setLesson(item)
    }
  }
}
