module Lessons {
  const INTRODUCTION_FUNCTIONS =
    {
      path = "/introduction/functions",
      category = "Introduction",
      title = "Functions",
      files =
        [
          {
            solution =
              <<~MINT
              component Main {
                fun render : Html {
                  name =
                    "World"

                  <h1>"Hello \#{name}!"</h1>
                }
              }
              MINT,
            contents =
              <<~MINT
              component Main {
                fun render : Html {
                  <h1>"Hello World!"</h1>
                }
              }
              MINT,
            title = "Main.mint",
            path = "Main.mint"
          }
        ],
      contents =
        <<#MARKDOWN
        Functions plays a central role in Mint. For instance, every component
        **must** have a `render` function. That's why it's crucial you have a
        good under standing of how they work.

        In Mint, every function starts with a lowercase letter and must only
        contain letters and numbers. It's body contains a number of
        statements and expressions:

        ```
        component Main {
          fun render : Html {
            name = "World"

            <h1>"Hello \#{name}!"</h1>
          }
        }
        ```

        We can even declare multiple variables at once:

        ```
        component Main {
          fun render : Html {
            greeting = "Howdy"
            name = "World"

            <h1>"\#{greeting} \#{name}!"</h1>
          }
        }
        ```

        Let's give it a shot! Declare a `name` variable in your `render`
        function and replace the currently hardcoded greeting.
        MARKDOWN
    }
}
