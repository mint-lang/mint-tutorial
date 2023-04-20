module Lessons {
  const LANGUAGE_FUNCTION_CALLS =
    {
      path: "/language/function-calls",
      title: "Function Calls",
      category: "Language",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun greet (name : String = "World") : String {
                  "Hello \#{name}!"
                }

                fun render : Html {
                  <h1>
                    <{ greet() }>
                    <br/>
                    <{ greet("Joe") }>
                  </h1>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        You can call on any value using parentheses `()` provided that it's type
        is `Function(...)`. Call arguments go inside the parenthese separated by
        commas.

        ```mint
        greet("World")
        greet("Joe", true)
        ```

        The `Function` type is a special type because it describes a function
        instead of data. The type arguments of the type represents the types
        of the arguments of the actual function itself and the **last argument**
        represents the **return type** of the function.

        ```mint
        // Function(String, String)
        fun greet (string : String) : String { ... }

        // Function(Function(a, b), Array(a), Array(b))
        fun map (interator : Function(a, b), array : Array(a)) : Array(b) { ... }
        ```

        The type checker checks the calls at compile time and will show errors
        if there is a mismatch of the arguments or return type.

        Function calls can be chained:

        ```mint
        greet = (greeting : String) {
          (name : String) {
            "\#{greeting} \#{name}!"
          }
        }

        greet("Hello")("World")
        ```
        MARKDOWN
    }
}
