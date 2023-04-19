module Lessons {
  const LANGUAGE_UPDATING_RECORDS =
    {
      path: "/language/updating-records",
      category: "Language",
      title: "Updating Records",
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

                  let updatedUser =
                    { user | name: "Jane Doe", email: "jane@doe.com" }

                  <div>
                    "Hello \#{updatedUser.name} at \#{updatedUser.email}!"
                  </div>
                }
              }
              MINT,
            contents:
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

                  let updatedUser =
                    { user | name: "Jane Doe"}

                  <div>
                    "Hello \#{updatedUser.name} at \#{updatedUser.email}!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        Since values are immutable in Mint you cannot modify a record directly,
        but only create a new record with the modified fields.

        To achieve that you can use the record update syntax:

        ```
        { user | name: "Jane Doe" }
        ```

        It copies all of the not specified fields of the base record and sets
        the specified fileds.

        You can update more than one field:

        ```
        { user | name: "Jane Doe", email: "jane@doe.com" }
        ```

        As an exercise update the `email` field of the record!
        MARKDOWN
    }
}
