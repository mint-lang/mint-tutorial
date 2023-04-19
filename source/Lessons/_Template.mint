module Lessons {
  const TEMPLATE =
    {
      path: "",
      category: "",
      title: "",
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
                  <div>"Hello World!"</div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        MARKDOWN
    }
}
