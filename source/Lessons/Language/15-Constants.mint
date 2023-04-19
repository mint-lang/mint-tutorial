module Lessons {
  const LANGUAGE_CONSTANTS =
    {
      path: "/language/constants",
      category: "Language",
      title: "Constants",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                const NAME = "World"

                fun render : Html {
                  <div>"Hello \#{NAME}!"</div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Constants are values that cannot change while the application is
        running, they can be defined for top level entities like `module`,
        `component`, `suite` or `store`.

        They can only contain uppercase letters and underscores and you can use
        the `const` keyword to define them:

        ```
        const PI = 3.14159265359
        ```

        Also they can be accessed using their name.

        ```
        PI * 2 // 6.28318530718
        ```
        MARKDOWN
    }
}
