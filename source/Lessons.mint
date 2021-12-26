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
      INTRODUCTION,
      LANGUAGE_TYPES,
      LANGUAGE_LITERALS,
      LANGUAGE_STRINGS,
      LANGUAGE_FUNCTIONS,
      LANGUAGE_FUNCTION_ARGUMENTS,
      CONTROL_EXPRESSIONS_IF,
      CONTROL_EXPRESSIONS_FOR,
      CONTROL_EXPRESSIONS_CASE,
      COMPONENTS_BASICS,
      COMPONENTS_DYNAMIC_ATTRIBUTES,
      COMPONENTS_STYLING,
      COMPONENTS_COMPOSITION
    ]

  const LIST_ITEMS =
    for (item of ITEMS) {
      title =
        if (item.title.isNotBlank()) {
          "#{item.category} / #{item.title}"
        } else {
          item.category
        }

      Ui.ListItem::Item(
        content = <{ title }>,
        matchString = title,
        key = item.path)
    }
}
