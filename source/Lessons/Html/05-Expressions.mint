module Lessons {
  const HTML_EXPRESSIONS =
    {
      path: "/html/expressions",
      title: "Expressions",
      category: "Html",
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
                  let greeting =
                    "Hello World!"

                  <div>
                    <{ greeting }>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        At some point you will want to display some data in your HTML and the
        main way to do it by using **HTML expressions**.

        They allow you to put any expression into HTML tags:

        ```
        <div><{ someExpression }></div>
        ```

        The expression must resolve to one of the following types:

        * `Html`
        * `String`
        * `Array(Html)`
        * `Array(String)`

        You can also use HTML expressions for attributes which take `Html` as
        the type:

        ```
        <MyComponent content=<{ "Some HTML Here..." }/>
        ```

        They also function as fragments as well:

        ```
        <{
          firstExpression
          secondExpression
        }>
        ```
        MARKDOWN
    }
}
