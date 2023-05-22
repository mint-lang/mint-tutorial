module Lessons {
  const LANGUAGE_BLOCKS =
    {
      path: "/language/blocks",
      category: "Language",
      title: "Blocks",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  // This is a block
                  {
                    let name =
                      "Joe"

                    <div>"Hello \#{name}!"</div>
                  }
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        In some of the previous chapters there were `let` statments (which we
        cover later on). These statements appear in **blocks**.

        A **block** is just a number of statements encolsed by brackets `{...}`
        used in many places (function body, branches of `if` expressions, etc...),
        but they can be used as a **standalone expression** as well:

        ```mint
        {
          let name = "Joe"

          ...
        }
        ```

        Statements in a block are evaulated sequentially from top to bottom and
        the value from last statement is returned.
        MARKDOWN
    }
}
