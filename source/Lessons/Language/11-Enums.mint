module Lessons {
  const LANGUAGE_ENUMS =
    {
      path = "/language/enums",
      category = "Language",
      title = "Enums",
      files =
        [
          {
            title = "Main.mint",
            path = "Main.mint",
            solution =
              <<~MINT
              enum User {
                LoggedIn(String)
                Visitor
              }

              component Main {
                fun render : Html {
                  user =
                    LoggedIn("Joe")

                  <div>
                    case (user) {
                      LoggedIn(name) => "I am \#{name}!"
                      Visitor => "I am a visitor!"
                    }
                  </div>
                }
              }
              MINT,
            contents =
              <<~MINT
              enum User {
                LoggedIn(String)
                Visitor
              }

              component Main {
                fun render : Html {
                  user =
                    Visitor

                  <div>
                    case (user) {
                      LoggedIn(name) => "I am \#{name}!"
                      Visitor => "I am a visitor!"
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents =
        <<#MARKDOWN
        In Mint **enums** represents [Algebraic Data Types](https://en.wikipedia.org/wiki/Algebraic_data_type),
        with them it's possible to describe data which contains different types
        of values (called options).

        For example a type for a logged in state can be written as two options:

        ```
        enum User {
          LoggedIn(String)
          Visitor
        }
        ```

        You can create a value of an enum option by using it's name (the
        compiler figures out which enum it belongs to):

        ```
        LoggedIn("Joe")
        ```

        In case there are multiple options with the same name you will need
        to specifiy which enum it belongs to by writing its name and a duble
        colon `::` before the option:

        ```
        User::LoggedIn("Joe")
        User::Visitor
        ```

        As an exercise change the given example to show "Joe" as the logged in
        user.
        MARKDOWN
    }
}
