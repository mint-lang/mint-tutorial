module Lessons {
  fun previousLesson (lesson : Lesson) : Maybe(Lesson) {
    index =
      Array.indexOf(lesson, ITEMS)

    Array.at(index - 1, ITEMS)
  }

  fun nextLession (lesson : Lesson) : Maybe(Lesson) {
    index =
      Array.indexOf(lesson, ITEMS)

    Array.at(index + 1, ITEMS)
  }

  const ITEMS =
    [
      INTRODUCTION_BASICS,
      INTRODUCTION_FUNCTIONS,
      INTRODUCTION_DYNAMIC_ATTRIBUTES,
      INTRODUCTION_STYLING,
      INTRODUCTION_COMPOSITION,
      CONTROL_EXPRESSIONS_IF,
      CONTROL_EXPRESSIONS_FOR,
      CONTROL_EXPRESSIONS_CASE,
    ]

  const LIST_ITEMS =
    for (item of ITEMS) {
      Ui.ListItem::Item(
        content = <{ "#{item.category} / #{item.title}" }>,
        matchString = "#{item.category} / #{item.title}",
        key = item.path)
    }
}
