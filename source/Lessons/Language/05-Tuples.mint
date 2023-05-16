module Lessons {
  const LANGUAGE_TUPLES =
    {
      path: "/language/tuples",
      category: "Language",
      title: "Tuples",
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
                  let tuple =
                    {"Hello", "World"}

                  <div>
                    "\#{tuple[0]} \#{tuple[1]}!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Tuple is a data structure which contains a fixed set of values, where each
        value can have a different type.

        * tuples are useful when you don't want to declare a record
        * they can contain any number of items
        * their items can be destructured and matched against

        A tuple can be created by specifying its items separated by commas
        inside curly brackets `{...}`

        ```mint
        {"First Value", 10, true}
        ```

        The type of a tuple is `Tuple(...)` where each parameter is an item of
        a tuple.

        For example, the type `Tuple(String, Number, Bool)` represents a tuple
        where the first element is a `String` the second is a `Number` the
        third is a `Bool`.

        We can access a tuples item at a given index using the bracket
        notation:

        ```mint
        let tuple =
          {"First Value", 10, true}

        tuple[0] == "First Value"
        tuple[1] == 10
        tuple[2] == true
        tuple[3] /* Returns a compile time error. */
        ```
        MARKDOWN
    }
}
