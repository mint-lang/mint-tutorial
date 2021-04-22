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
        contents = <Lessons.Introduction.Basics/>,
        path = "/introduction/basics",
        category = "Introduction",
        title = "Basics",
        files =
          [
            {
              contents = @inline(../assets/lessons/introduction/basics.txt),
              solution = "",
              title = "Main.mint",
              path = "Main.mint"
            }
          ]
      },
      {
        contents = <Lessons.Introduction.AddingData/>,
        path = "/introduction/adding-data",
        category = "Introduction",
        title = "Adding Data",
        files =
          [
            {
              solution = @inline(../assets/lessons/introduction/adding-data-solution.txt),
              contents = @inline(../assets/lessons/introduction/basics.txt),
              title = "Main.mint",
              path = "Main.mint"
            }
          ]
      },
      {
        contents = <Lessons.Introduction.DynamicAttributes/>,
        path = "/introduction/dynamic-attributes",
        category = "Introduction",
        title = "Dynamic Attributes",
        files =
          [
            {
              solution = @inline(../assets/lessons/introduction/dynamic-attributes-solution.txt),
              contents = @inline(../assets/lessons/introduction/dynamic-attributes.txt),
              title = "Main.mint",
              path = "Main.mint"
            }
          ]
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
