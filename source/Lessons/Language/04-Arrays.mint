module Lessons {
  const LANGUAGE_ARRAYS =
    {
      path: "/language/arrays",
      category: "Language",
      title: "Arrays",
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
                  <div>
                    for (item of ["Joe", "World"]) {
                      <div>
                        <{ item }>
                      </div>
                    }
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        An `Array(a)` is a generic type containing elements of any other type.

        Arrays are typically created with an array literal:

        ```mint
        [1, 2, 3]
        ["A", "B", "C"]
        ```

        You can define the type of an array using the of keyword. It is useful
        for defining the type of an empty array:

        ```mint
        [] of Number
        [1,2,3] of Number
        ```

        We can access an arrays item at a given index using the bracket
        notiation:

        ```mint
        let array =
          [1, 2, 3]

        array[0] == Maybe::Just(1)
        ```

        When accessing an item this way the type of the item will be `Maybe(a)`
        where a is the type of item in the array. This is so because there might
        not be an item at that index.
        MARKDOWN
    }
}
