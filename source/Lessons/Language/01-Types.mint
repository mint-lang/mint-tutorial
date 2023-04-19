module Lessons {
  const LANGUAGE_TYPES =
    {
      path: "/language/types",
      category: "Language",
      title: "Types",
      files: [],
      contents:
        <<#MARKDOWN
        Mint is a strongly typed programming language, which means that you will
        encounter a lot of type definitions.

        Syntax wise a type definition consists of an identifier starting with a
        capital letter, and followed by letters and numbers.

        A type basically gives a name to a value conforming to a specific data
        structure.

        ```
        "Hello World!" // Type type of this value is `String`
        ```

        A type can have **type variables**. These variables makes the type
        polymorphic, which means that the type can be used with other types
        instead of the type variable.

        ```
        // This is a generic type where the "a" can be any other type.
        Maybe(a)

        // This represents just a `String` or nothing.
        Maybe(String)
        ```

        These kind of types are called composite types because the data
        structure they describe are composed of multiple types.

        Types appear in Mint code in multiple places usually preceeded by a
        colon:

        ```
        property name : String
        ```
        MARKDOWN
    }
}
