module Lessons {
  const LANGUAGE_STRINGS =
    {
      path: "/language/strings",
      category: "Language",
      title: "Strings",
      files: [],
      contents:
        <<#MARKDOWN
        A `String` represents a sequence of characters.

        Strings are created with string literals using quotes `""`:

        ```mint
        "A single line string!"

        "A multline line string
        An other line"
        ```

        Strings can be broken apart with the `\\` operator:

        ```mint
        "First line" \\
        "Second line" \\
        "Third line" == "First lineSecond lineThird line"
        ```

        Strings can be concatenated with the `+` operator:

        ```mint
        ("Hello" + " World" + "!") == "Hello World!"
        ```

        Other values can be interpolated into strings using interpolation:

        ```mint
        let name =
          "World"

        "Hello \#{world}!" == "Hello World!"
        ```

        Since Mint is a strongly typed language you can only interpolate other
        `String` or `Number` typed values (numbers are implicitly converted to
        string). If you try to use something else you will get a nice error
        message.
        MARKDOWN
    }
}
