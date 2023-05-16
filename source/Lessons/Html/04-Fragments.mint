module Lessons {
  const HTML_FRAGMENTS =
    {
      path: "/html/fragments",
      title: "Fragments",
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
                  <>
                    <div>"Hi!"</div>
                    <div>"Howdy!"</div>
                    <div>"Ahoy!"</div>
                  </>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        There are cases where you don't want to wrap multiple `HTML` elements
        into for example a `div`. In those cases, you can use a **HTML
        fragment**.

        It's written as an HTML tag without a tagname:

        ```mint
        <>
          <div>"Hi!"</div>
          <div>"Howdy!"</div>
          <div>"Ahoy!"</div>
        </>
        ```

        HTML fragments can only have one attribute `key` which is used to
        identify the fragment in specific cases, which we will cover later.
        MARKDOWN
    }
}
