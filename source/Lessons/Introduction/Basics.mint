module Lessons {
  const INTRODUCTION_BASICS =
    {
      path = "/introduction/basics",
      category = "Introduction",
      title = "Basics",
      files =
        [
          {
            title = "Main.mint",
            path = "Main.mint",
            solution = "",
            contents =
              <<~MINT
              component Main {
                fun render : Html {
                  <h1>"Hello World!"</h1>
                }
              }
              MINT
          }
        ],
      contents =
        {
          button =
            <Ui.Button
              iconAfter={Ui.Icons:EYE}
              size={Ui.Size::Em(0.75)}
              label="Show Me"
              type="danger"/>

          guideLink =
            <a
              href="https://www.mint-lang.com/guide"
              target="_blank">

              "Guide"

            </a>

          apiLink =
            <a
              href="https://www.mint-lang.com/api"
              target="_blank">

              "API Docs"

            </a>

          <<#MARKDOWN
          ## Introduction

          Welcome to the Mint tutorial. This is an interactive exploration of
          the Mint programming language, designed to make you productive as
          quickly as possible.

          Make sure to also check out the #{guideLink} and the #{apiLink}.

          ## What is Mint?

          Mint is a language specifically created for writing **single-page
          applications**

          It provides you with all the necessary tooling to write **error free**,
          **readable**, and **maintainable** applications.

          Mint is strongly typed, and compiles to JavaScript. This means your
          code is less prone to errors, easier to maintain, and benefit from
          optimizations done by the Mint compiler.

          While we recommend you to use Mint to build entire applications,
          it can also be added incrementally to an existing codebase.

          ## How to use this tutorial

          You'll need to have basic familiarity with HTML, CSS and JavaScript to
          understand Mint.

          As you progress through the tutorial, you'll be presented with mini
          exercises designed to illustrate new features. Later chapters build on
          the knowledge gained in earlier ones, so it's recommended that you go
          from start to finish. If necessary, you can navigate via the dropdown
          above (click 'Introduction / Basics').

          Each tutorial chapter will have a #{button} button that you can click
          if you get stuck following the instructions.

          Try not to rely on it too much; you will learn faster by figuring out
          where to put each suggested code block and manually typing it in to
          the editor.
          MARKDOWN
        }
    }
}
