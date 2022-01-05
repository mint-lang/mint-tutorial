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
      LANGUAGE_ARRAYS,
      LANGUAGE_TUPLES,
      LANGUAGE_FUNCTIONS,
      LANGUAGE_FUNCTION_ARGUMENTS,
      LANGUAGE_ANONYMOUS_FUNCTIONS,
      LANGUAGE_FUNCTION_CALLS,
      LANGUAGE_ENUMS,
      LANGUAGE_GENERIC_ENUMS,
      LANGUAGE_RECORDS,
      LANGUAGE_UPDATING_RECORDS,
      LANGUAGE_CONSTANTS,
      LANGUAGE_MODULES,
      CONTROL_EXPRESSIONS_IF,
      CONTROL_EXPRESSIONS_FOR,
      CONTROL_EXPRESSIONS_CASE,
      HTML_TAGS,
      HTML_EVENTS,
      HTML_INLINE_STYLES,
      HTML_FRAGMENTS,
      HTML_EXPRESSIONS,
      COMPONENTS_BASICS,
      COMPONENTS_DYNAMIC_ATTRIBUTES,
      COMPONENTS_STYLING,
      COMPONENTS_COMPOSITION,
      COMPONENTS_PROPERTIES,
      COMPONENTS_COMPUTED_PROPERTIES
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
