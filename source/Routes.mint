routes {
  * (path : String) {
    let path =
      Window.url().path

    let lesson =
      Array.find(Lessons:ITEMS, (lesson : Lesson) { lesson.path == path })

    if let Maybe::Just(item) = lesson {
      Application.setLesson(item)
    } else {
      Window.navigate("/introduction")
    }
  }
}
