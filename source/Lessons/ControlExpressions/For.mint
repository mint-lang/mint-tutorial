module Lessons {
  const CONTROL_EXPRESSIONS_FOR =
    {
      path = "/control-expressions/for",
      category = "Control Expressions",
      title = "For",
      files =
        [
          {
            solution =
              <<~MINT
              component Main {
                fun render : Html {
                  cats =
                    [
                      {"Henri The Existential Cat", "OUtn3pvWmpg"},
                      {"Keyboard Cat", "J---aiyznGQ"},
                      {"Maru", "z_AbfPXTKms"},
                    ]

                  <div>
                    <h1>"The Famous Cats of YouTube"</h1>

                    <ul>
                      for (cat of cats) {
                        <li>
                          <a
                            href="https://www.youtube.com/watch?v=\#{cat[1]}"
                            target="_blank">
                            <{cat[0]}>
                          </a>
                        </li>
                      }
                    </ul>
                  </div>
                }
              }
              MINT,
            contents =
              <<~MINT
              component Main {
                fun render : Html {
                  cats =
                    [
                      {"Henri The Existential Cat", "OUtn3pvWmpg"},
                      {"Keyboard Cat", "J---aiyznGQ"},
                      {"Maru", "z_AbfPXTKms"},
                    ]

                  <div>
                    <h1>"The Famous Cats of YouTube"</h1>

                    <ul>
                      /*
                      Put this in a for expression.

                      <li>
                        <a
                          href="https://www.youtube.com/watch?v=\#{cat.id}"
                          target="_blank">
                          <{cat.name}>
                        </a>
                      </li>
                      */
                    </ul>
                  </div>
                }
              }
              MINT,
            title = "Main.mint",
            path = "Main.mint"
          }
        ],
      contents =
        <<#MARKDOWN
        As most other languages Mint has a structrue to iterate over certain
        data structures.

        It looks like this:

        ```
        for (item of iterable) {
          expressions
        }
        ```

        Unlike in some languages `for` in Mint is an expression and not a
        statement, and because of this it returns an `Array(item)` where
        `item` is the type of the `expression`.

        For only can iterate through these types: `Array(item)`, `Set(item)`,
        and `Map(key,value)`.
        MARKDOWN
    }
}
