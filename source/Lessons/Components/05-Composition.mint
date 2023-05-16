module Lessons {
  const COMPONENTS_COMPOSITION =
    {
      path: "/components/composition",
      category: "Components",
      title: "Composition",
      files:
        [
          {
            solution:
              <<~MINT
              component Main {
                style base {
                  font-family: 'Comic Sans MS', cursive;
                  font-size: 2em;
                  color: purple;
                }

                fun render : Html {
                  <div>
                    <p::base>
                      "This is a paragraph."
                    </p>

                    <Nested/>
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
                component Main {
                  style base {
                    font-family: 'Comic Sans MS', cursive;
                    font-size: 2em;
                    color: purple;
                  }

                  fun render : Html {
                    <div>
                      <p::base>
                        "This is a paragraph."
                      </p>
                    </div>
                  }
                }
                MINT,
            title: "Main.mint",
            path: "Main.mint"
          },
          {
            contents:
              <<~MINT
              component Nested {
                fun render : Html {
                  <p>"This is another paragraph."</p>
                }
              }
              MINT,
            solution: "",
            title: "Nested.mint",
            path: "Nested.mint"
          }
        ],
      contents:
        <<#MARKDOWN
        It would be impractical to put your entire app in a single component.
        Instead, we can write components in other files and use them as we
        would other elements.

        Once your component is ready, all you need to do is add it as markup:

        ```mint
        <Nested/>
        ```

        You can notice that there is no `import` keyword. That's because the
        compiler finds all `.mint` files in your project and parses them
        automatically. Anything in them is available everywhere.

        Also notice that the component name `Nested` is capitalised. This
        convention has been adopted to allow us to differentiate between
        user-defined components and regular HTML tags.
       MARKDOWN
    }
}
