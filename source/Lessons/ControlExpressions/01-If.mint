module Lessons {
  const CONTROL_EXPRESSIONS_IF =
    {
      path: "/control-expressions/if",
      category: "Control Expressions",
      title: "If",
      files:
        [
          {
            solution:
              <<~MINT
              component Main {
                state userLoggedIn : Bool = false

                fun toggle : Promise(Void) {
                  next { userLoggedIn: !userLoggedIn }
                }

                fun render : Html {
                  <div>
                    if (userLoggedIn) {
                      <button onClick={toggle}>
                        "Log out"
                      </button>
                    } else {
                      <button onClick={toggle}>
                        "Log in"
                      </button>
                    }
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                state userLoggedIn : Bool = false

                fun toggle : Promise(Void) {
                  next { userLoggedIn: !userLoggedIn }
                }

                fun render : Html {
                  <div>
                    <button onClick={toggle}>
                      "Log out"
                    </button>

                    <button onClick={toggle}>
                      "Log in"
                    </button>
                  </div>
                }
              }
              MINT,
            title: "Main.mint",
            path: "Main.mint"
          }
        ],
      contents:
        <<#MARKDOWN
        As most other languages Mint has a structure to return different
        values based on some condition.

        It looks like this:

        ```mint
        if (condition) {
          ...
        } else {
          ...
        }
        ```

        Unlike in some languages `if` in Mint is an expression and not a
        statement, and because of this both branches need to return something
        and those need to be of the same type.

        With this information you should be able to update the code to display the
        correct button based on the `userLoggedIn` state.
        MARKDOWN
    }
}
