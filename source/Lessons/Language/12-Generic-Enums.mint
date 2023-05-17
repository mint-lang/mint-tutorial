module Lessons {
  const LANGUAGE_GENERIC_ENUMS =
    {
      path: "/language/generic-enums",
      category: "Language",
      title: "Generic Enums",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              /* Represents the status of a request. */
              enum Status(error, value) {
                Errored(error)
                Loaded(value)
                Loading
                Idle
              }

              component Main {
                fun render : Html {
                  let user =
                    Status::Loaded("Joe")

                  <div>
                    case (user) {
                      Status::Errored(error) => "An error happened: \#{error}!"
                      Status::Loading => "Loading..."
                      Status::Loaded(value) => value
                      Status::Idle => ""
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Enums can be generic, meaning that you can specify relationships using
        type variables.

        An example for this is the `Result` enum:

        ```mint
        enum Result(error, value) {
          Err(error)
          Ok(value)
        }
        ```

        It's generic because it can be used with other types to represent
        different outcomes:

        ```mint
        // This is a result of converting a number
        Result(String, Number)

        // This is a result of finding a DOM element
        Result(String, Dom.Element)
        ```

        You can play around with the example, changing the option to see how it
        reflects the displayed text.
        MARKDOWN
    }
}
