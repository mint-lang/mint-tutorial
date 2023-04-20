module Lessons {
  const HTML_INLINE_STYLES =
    {
      path: "/html/inline-styles",
      category: "Html",
      title: "Inline Styles",
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
                  let styleMap =
                    Map.set(Map.empty(), "color", "red")

                  <div>
                    <div style={styleMap}>
                      "I am red!"
                    </div>

                    <div style="color: purple;">
                      "I am purple!"
                    </div>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        One of the was you can define CSS for a HTML tag using inline styles.

        Inline styles can be defined using the `style` attribute. It takes
        either CSS string or a `Map(String, String)` of CSS values:

        ```mint
        let styleMap =
          Map.set(Map.empty(), "color", "red")

        <div>
          <div style={styleMap}>
            "I am red!"
          </div>

          <div style="color: purple;">
            "I am purple!"
          </div>
        </div>
        ```
        MARKDOWN
    }
}
