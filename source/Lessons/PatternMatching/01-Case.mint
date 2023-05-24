module Lessons {
  const PATTERN_MATCHING_CASE =
    {
      path: "/pattern-matching/case",
      category: "Pattern Matching",
      title: "Case",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun greet (value : Maybe(Tuple(String, Maybe(String)))) : String {
                  case value {
                    Maybe::Just({name, Maybe::Just(greeting)}) =>
                      "\#{greeting} \#{name}!"

                    Maybe::Just({name, Maybe::Nothing}) =>
                      "Hello \#{name}!"

                    =>
                      "Hello World!"
                  }
                }

                fun render : Html {
                  <{
                    [
                      greet(Maybe::Just({"Joe", Maybe::Nothing})),
                      greet(Maybe::Just({"Joe", Maybe::Just("Howdy")})),
                      greet(Maybe::Nothing)
                    ]
                    |> String.join(" ")
                  }>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        In the previous lesson we matched on simple values, which could have
        been written as a bunch of **ifs** and **elses**, however in the real
        world we have complex data structures and getting value out of those
        can be hard.

        This is where **pattern matching** comes in. It's a neat way of getting
        data out of a complex structure.

        A **pattern** looks like another value but instead only having values,
        it can have variables which will be assigned the corresponding value:

        ```mint
        // We have this value where the nested value is a string
        Maybe::Just("Hello")

        // This is a pattern that can match that structure
        Maybe::Just(value)
        ```

        If we **destructure** that **pattern** against the data the `value`
        variable will be assigned the `"Hello"` value.

        We can do this in multiple ways one of which is the same `case`
        statement we had before. You can see in the example that are multiple
        **branches** that are returned if it matches its pattern.

        If a branch doesn't have a pattern (or value) it covers all other
        possibilities.
        MARKDOWN
    }
}
