module Lessons {
  const COMPONENTS_REFERENCES =
    {
      path: "/components/references",
      category: "Components",
      title: "References",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun focusInput : Promise(Void) {
                  Dom.focus(input)
                }

                fun updateItem : Promise(Void) {
                  case (maybeItem) {
                    Maybe::Just(item) => item.update("Bello")
                    Maybe::Nothing => next {}
                  }
                }

                fun render : Html {
                  <>
                    <div>
                      <input as input/>

                      <button onClick={focusInput}>
                        "Focus the input!"
                      </button>
                    </div>

                    <div>
                      <Item as maybeItem/>

                      <button onClick={updateItem}>
                        "Update the item!"
                      </button>
                    </div>
                  </>
                }
              }
              MINT
          },
          {
            title: "Item.mint",
            path: "Item.mint",
            solution: "",
            contents:
              <<~MINT
              component Item {
                state text : String = "Hello"

                fun update(text : String) : Promise(Void) {
                  next { text: text }
                }

                fun render : Html {
                  <div>
                    <{ text }>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Sometimes it's necessary to access elements or components in a component
        for a number of reasons. To do that you can use the `as name` notation:

        ```
        <input as input/>
        <MyComponent as myComponent/>
        ```

        Any such reference will be a `Maybe` because it's not guaranteed that
        it's display and in the DOM when accessed.
        MARKDOWN
    }
}
