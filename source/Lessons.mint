module Lessons {
  fun previousLesson (lesson : Lesson) : Maybe(Lesson) {
    try {
      index =
        Array.indexOf(lesson, ITEMS)

      Array.at(index - 1, ITEMS)
    }
  }

  fun nextLession (lesson : Lesson) : Maybe(Lesson) {
    try {
      index =
        Array.indexOf(lesson, ITEMS)

      Array.at(index + 1, ITEMS)
    }
  }

  const ITEMS =
    [
      {
        source = @asset(../assets/lessons/introduction/basics.txt),
        contents = <Lessons.Introduction.Basics/>,
        path = "/introduction/basics",
        category = "Introduction",
        title = "Basics",
        solution = ""
      },
      {
        solution = @asset(../assets/lessons/introduction/adding-data-solution.txt),
        source = @asset(../assets/lessons/introduction/basics.txt),
        contents = <Lessons.Introduction.AddingData/>,
        path = "/introduction/adding-data",
        category = "Introduction",
        title = "Adding Data"
      }
    ]

  const LIST_ITEMS =
    for (item of ITEMS) {
      Ui.ListItem::Item(
        content = <{ "#{item.category} / #{item.title}" }>,
        matchString = "#{item.category} / #{item.title}",
        key = item.path)
    }
}
