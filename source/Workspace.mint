/*
The main component which contains the instructions on the left,
the code on the top and the preview on the bottom.
*/
component Workspace {
  connect Ui exposing { darkMode }

  connect Application exposing {
    previousLesson,
    showSolution,
    updateValue,
    nextLesson,
    previewURL,
    activeFile,
    setFile,
    values,
    lesson
  }

  /* The style for the base. */
  style base {
    grid-template-columns: minmax(33.333%, 32em) auto;
    grid-template-rows: 1fr 1fr;
    display: grid;
    height: 100vh;

    button:disabled {
      opacity: 0.5;
    }
  }

  /* The style for the instructions. */
  style instructions {
    padding: 1.5em;
  }

  /* The style for the sidebar. */
  style sidebar {
    border-right: 1px solid var(--content-border);
    background: var(--content-color);
    color: var(--content-text);
    grid-row: span 2;

    grid-template-rows: auto 1fr auto;
    min-height: 0;
    display: grid;
  }

  /* Styles for the editor. */
  style editor {
    border-bottom: 1px solid var(--content-border);
    border-right: 1px solid var(--content-border);
    min-height: 0;
    display: grid;

    background-color: var(--content-color);
    padding-top: 7px;

    .CodeMirror {
      height: auto;
    }

    > * > *:last-child {
      display: grid;
      min-height: 0;
      padding: 0;
    }
  }

  /* Styles for the iframe. */
  style iframe {
    width: calc(100% - 1px);
    background: white;
    height: 100%;

    border: 0;
    border-right: 1px solid var(--content-border);
  }

  /* Styles for the toolbar. */
  style toolbar {
    border-top: 1px solid var(--content-border);
    padding: 0.75em 1.5em;

    justify-content: space-between;
    grid-auto-flow: column;
    align-items: center;
    display: grid;
  }

  /* Styles for the navigation. */
  style navigation {
    border-bottom: 0.1875em solid var(--content-border);
    box-sizing: border-box;
    padding: 0.75em 1.5em;

    grid-template-columns: auto 1fr auto;
    grid-gap: 1em;
    display: grid;

    /* TODO: Fix this in Mint UI. */
    > a {
      display: inline-grid;
    }
  }

  /* Function to shows the solution. */
  fun handleShowSolution (event : Html.Event) {
    showSolution()
  }

  /* Renders the component. */
  fun render : Html {
    try {
      solutionLessons =
        Array.select(
          (file : LessonFile) {
            String.isNotBlank(file.solution)
          },
          lesson.files)

      hasSolution =
        !Array.isEmpty(solutionLessons)

      isSolution =
        Array.any(
          (file : LessonFile) {
            Map.getWithDefault(file.path, "", values) == file.solution
          },
          solutionLessons)

      <div::base>
        <div::sidebar>
          <div::navigation>
            <Ui.Button
              disabled={Maybe::Nothing == previousLesson&.path}
              iconAfter={Ui.Icons:DOUBLE_CHEVRON_LEFT}
              href={previousLesson&.path or "/"}
              type="faded"/>

            <Ui.Native.Select
              onChange={Window.navigate}
              items={Lessons:LIST_ITEMS}
              value={lesson.path}/>

            <Ui.Button
              disabled={Maybe::Nothing == nextLesson&.path}
              iconAfter={Ui.Icons:DOUBLE_CHEVRON_RIGHT}
              href={nextLesson&.path or "/"}
              type="faded"/>
          </div>

          <Ui.ScrollPanel maxSize={1000}>
            <div::instructions>
              <Ui.Content>
                <{ lesson.contents }>
              </Ui.Content>
            </div>
          </Ui.ScrollPanel>

          <div::toolbar>
            <Ui.DarkModeToggle/>

            <Ui.Container>
              if (hasSolution) {
                if (isSolution) {
                  <{  }>
                } else {
                  <Ui.Button
                    onClick={handleShowSolution}
                    iconAfter={Ui.Icons:EYE}
                    label="Show Me"
                    type="danger"
                    href=""/>
                }
              }

              <Ui.Button
                disabled={Maybe::Nothing == nextLesson&.path}
                iconAfter={Ui.Icons:CHEVRON_RIGHT}
                href={nextLesson&.path or "/"}
                type="faded"
                label="Next"/>
            </Ui.Container>
          </div>
        </div>

        <div::editor>
          try {
            tabs =
              for (file of lesson.files) {
                {
                  content =
                    <CodeMirror
                      value={Map.get(file.path, values) or file.contents}
                      onChange={updateValue(file.path)}
                      javascripts=[
                        @asset(../assets/codemirror.min.js),
                        @asset(../assets/codemirror.simple-mode.js),
                        @asset(../assets/codemirror.mint.js)
                      ]
                      styles=[
                        @asset(../assets/codemirror.min.css),
                        @asset(../assets/codemirror.light.css),
                        @asset(../assets/codemirror.dark.css)
                      ]
                      theme={
                        if (darkMode) {
                          "dark"
                        } else {
                          "light"
                        }
                      }
                      mode="mint"/>,
                  iconBefore = Ui.Icons:FILE_CODE,
                  iconAfter = <></>,
                  label = file.title,
                  key = file.path
                }
              }

            <Ui.Tabs
              active={activeFile}
              onChange={setFile}
              breakpoint={400}
              items={tabs}/>
          }
        </div>

        <div>
          <iframe::iframe src={previewURL}/>
        </div>
      </div>
    }
  }
}
