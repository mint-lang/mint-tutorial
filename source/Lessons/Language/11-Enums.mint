module Lessons {
  const LANGUAGE_ENUMS =
    {
      path: "/language/enums",
      category: "Language",
      title: "Enums",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution:
              <<~MINT
              enum User {
                LoggedIn(String)
                Visitor
              }

              component Main {
                fun render : Html {
                  let user =
                    User::LoggedIn("Joe")

                  <div>
                    case (user) {
                      User::LoggedIn(name) => "I am \#{name}!"
                      User::Visitor => "I am a visitor!"
                    }
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              enum User {
                LoggedIn(String)
                Visitor
              }

              component Main {
                fun render : Html {
                  let user =
                    User::Visitor

                  <div>
                    case (user) {
                      User::LoggedIn(name) => "I am \#{name}!"
                      User::Visitor => "I am a visitor!"
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        In Mint **enums** represents [Algebraic Data Types](https://en.wikipedia.org/wiki/Algebraic_data_type),
        with them it's possible to describe data which contains different types
        of values (called options).

        For example a type for a logged in state can be written as two options:

        ```mint
        enum User {
          User::LoggedIn(String)
          User::Visitor
        }
        ```

        You can create a value of an enum option by using it's name and option:

        ```mint
        User::LoggedIn("Joe")
        ```

        As an exercise change the given example to show "Joe" as the logged in
        user.
        MARKDOWN
    }
}
