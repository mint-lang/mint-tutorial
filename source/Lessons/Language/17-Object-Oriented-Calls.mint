module Lessons {
  const LANGUAGE_OBJECT_ORIENTED_CALLS =
    {
      path = "/language/object-oriented-calls",
      title = "Object Oriented Calls",
      category = "Language",
      files =
        [
          {
            title = "Main.mint",
            path = "Main.mint",
            solution =
              <<~MINT
              module Greeter {
                fun greet (name : String = "World") : String {
                  "Hello \#{name}!"
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    <{ "Joe".greet() }>
                  </div>
                }
              }
              MINT,
            contents =
              <<~MINT
              module Greeter {
                fun greet (name : String = "World") : String {
                  "Hello \#{name}!"
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    <{ Greeter.greet("Joe") }>
                  </div>
                }
              }
              MINT
          }
        ],
      contents =
        <<#MARKDOWN
        if desired calls can be written in an object-oriented style using the
        syntax `obj.functionName(args)` instead of `functionName(obj, args)`.

        ```
        String.size("abc") == "abc".size()

        Array.map(String.toUpperCase, ["a", "b", "c"]) ==
          ["a", "b", "c"].map(String.toUpperCase)
        ```

        All functions can be used that are defined inside **modules**, functions
        defined in components, stores and providers cannot be used this way.

        If there are multiple functions with the same name and arguments then
        a compile error will be raised.

        As an excersice you can change the function call to use this notiation.
        MARKDOWN
    }
}
