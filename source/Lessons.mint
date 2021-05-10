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
        contents = <Lessons.Introduction.Functions/>,
        path = "/introduction/functions",
        category = "Introduction",
        title = "Functions",
        files =
          [
            {
              solution = @inline(../assets/lessons/introduction/functions-solution.txt),
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
      },
      {
        contents = <Lessons.Introduction.Styling/>,
        path = "/introduction/styling",
        category = "Introduction",
        title = "Styling",
        files =
          [
            {
              solution = @inline(../assets/lessons/introduction/styling-solution.txt),
              contents = @inline(../assets/lessons/introduction/styling.txt),
              title = "Main.mint",
              path = "Main.mint"
            }
          ]
      },
      {
        contents = <Lessons.Introduction.Composition/>,
        path = "/introduction/composition",
        category = "Introduction",
        title = "Composition",
        files =
          [
            {
              solution = @inline(../assets/lessons/introduction/composition-main-solution.txt),
              contents = @inline(../assets/lessons/introduction/composition-main.txt),
              title = "Main.mint",
              path = "Main.mint"
            },
            {
              contents = @inline(../assets/lessons/introduction/composition-nested.txt),
              solution = "",
              title = "Nested.mint",
              path = "Nested.mint"
            }
          ]
      },
      {
        contents = <Lessons.ControlExpressions.If/>,
        path = "/control-expressions/if",
        category = "Control Expressions",
        title = "If",
        files =
          [
            {
              solution = @inline(../assets/lessons/control-expressions/if-solution.txt),
              contents = @inline(../assets/lessons/control-expressions/if.txt),
              title = "Main.mint",
              path = "Main.mint"
            }
          ]
      },
      {
        contents = <Lessons.ControlExpressions.For/>,
        path = "/control-expressions/for",
        category = "Control Expressions",
        title = "For",
        files =
          [
            {
              solution = @inline(../assets/lessons/control-expressions/for-solution.txt),
              contents = @inline(../assets/lessons/control-expressions/for.txt),
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
