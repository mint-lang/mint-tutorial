module Lessons {
  const LANGUAGE_RECORDS =
    {
      path: "/language/records",
      category: "Language",
      title: "Records",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution:
              <<~MINT
              record User {
                email : String,
                name : String,
                age : Number,
                id : Number
              }

              component Main {
                fun render : Html {
                  let user =
                    {
                      email: "john@doe.com",
                      name: "John Doe",
                      age: 32,
                      id: 1
                    }

                  <div>
                    "Hello \#{user.name}!"
                  </div>
                }
              }
              MINT,
            contents:
              <<~MINT
              record User {
                email : String,
                name : String,
                id : Number
              }

              component Main {
                fun render : Html {
                  let user =
                    {
                      email: "john@doe.com",
                      name: "John Doe",
                      id: 1
                    }

                  <div>
                    "Hello \#{user.name}!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Records are data structures that have a fixed set of keys. You can
        define a record type with the `record` keyword:

        ```mint
        record User {
          email : String,
          name : String,
          id : Number
        }
        ```

        The easiest way to create a record is with a record literal:

        ```mint
        {
          email: "john@doe.com",
          name: "John Doe",
          id: 1
        }
        ```

        An other way is to use a record constructor:

        ```mint
        User("john@doe.com", "John Doe", 1) == {
          email: "john@doe.com",
          name: "John Doe",
          id: 1
        }
        ```

        You can access a record's fields using the `.` notation:

        ```mint
        user.name == "John Doe"
        ```

        As an exercise, add an `age` field to the record!
        MARKDOWN
    }
}
