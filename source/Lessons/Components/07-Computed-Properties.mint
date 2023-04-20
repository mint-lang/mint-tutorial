module Lessons {
  const COMPONENTS_COMPUTED_PROPERTIES =
    {
      path: "/components/computed-properties",
      title: "Computed Properties",
      category: "Components",
      files: [],
      contents:
        <<#MARKDOWN
        Computed properties are functions that work like properties, they are
        defined with the `get` keyword and don't have any arguments.

        ```mint
        component Greeter {
          property name : String = ""

          get text : String {
            "Hello " + name + "!"
          }

          fun render : Html {
            <div>
              <{ text }>
            </div>
          }
        }

        component Main {
          fun render {
            <div>
              <Greeter name="Joe"/>
            </div>
          }
        }
        ```
        MARKDOWN
    }
}
