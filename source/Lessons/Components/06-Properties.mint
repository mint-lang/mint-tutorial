module Lessons {
  const COMPONENTS_PROPERTIES =
    {
      path: "/components/properties",
      category: "Components",
      title: "Properties",
      files:
        [
          {
            solution:
              <<~MINT
              component Greeter {
                property name : String = "World"

                fun render : Html {
                  <p>"Hello \#{name}!"</p>
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    <Greeter name="Joe"/>
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Greeter {
                fun render : Html {
                  <p>"Hello World!"</p>
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    <Greeter/>
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
        The way to pass some data to a component is to use properties. They can
        be defined for components with the property keyword:

        ```mint
        property name : String = "World"
        ```

        * The name of the property must start with a lowercase letter and can
          only contain letters and numbers.

        * Properties can be referenced by name within the component (in styles,
          functions, computed properties, etc...).

        The type definition or default value can be omitted, but not both:

        ```mint
        // Type inferred from the default value
        property name = "World"

        // The property is required
        property name : String
        ```

        If the passed property doesn't match its given type, then you will get
        a compile error.
        MARKDOWN
    }
}
