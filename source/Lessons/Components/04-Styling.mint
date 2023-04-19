module Lessons {
  const COMPONENTS_STYLING =
    {
      path: "/components/styling",
      category: "Components",
      title: "Styling",
      files:
        [
          {
            solution:
              <<~MINT
              component Main {
                style base {
                  font-family: 'Comic Sans MS', cursive;
                  font-size: 2em;
                  color: purple;
                }

                fun render : Html {
                  <p::base>
                    "This is a paragraph."
                  </p>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                style base {
                  /* Styles go here. */
                }

                fun render : Html {
                  <p::base>
                    "This is a paragraph."
                  </p>
                }
              }
              MINT,
            title: "Main.mint",
            path: "Main.mint"
          }
        ],
      contents:
        <<#MARKDOWN
        In HTML you normally put your styles into a `<style>` element. In Mint
        you put it into `style` blocks.

        ```
        style base {
          font-family: 'Comic Sans MS', cursive;
          font-size: 2em;
          color: purple;
        }
        ```

        Style blocks are like CSS classes, they have a name and can be added to
        any element in the component.

        Styling is a topic so big that it has it's own chapter so stick around
        to learn everything about it!
        MARKDOWN
    }
}
