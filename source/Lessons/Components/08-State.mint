module Lessons {
  const COMPONENTS_STATE =
    {
      path: "/components/state",
      category: "Components",
      title: "State",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                state shown : Bool = false

                fun render : Html {
                  if (shown) {
                    <>
                      <div>"Hello there!"</div>
                      <button onClick={() { next { shown: false }}}>
                        "Dismiss!"
                      </button>
                    </>
                  } else {
                    <button onClick={() { next { shown: true }}}>
                      "Show me!"
                    </button>
                  }
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                state shown : Bool = false

                fun render : Html {
                  if (shown) {
                    <div>"Hello there!"</div>
                  } else {
                    <button onClick={() { next { shown: true }}}>
                      "Show me!"
                    </button>
                  }
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Sometimes you need to have some data for a component to describe it's
        internal state.

        For that, you can use the `state` keyword:

        ```mint
        component Main {
          state shown : Bool = false

          fun render : Html {
            if (shown) {
              <div>"Hello there!"</div>
            } else {
              <button onClick={() { next { shown: true }}}>
                "Show me!"
              </button>
            }
          }
        }
        ```

        The state can be moved forward using the `next` keyword.

        As an exercise, you can add an other button to hide the text!
        MARKDOWN
    }
}
