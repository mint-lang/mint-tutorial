/*
The main component which contains the instructions on the left,
the code on the top and the preview on the bottom.
*/
component Workspace {
  connect Application exposing {
    previousLesson,
    originalSource,
    updateSource,
    nextLesson,
    previewURL,
    solution,
    lesson,
    source
  }

  /* The style for the base. */
  style base {
    grid-template-columns: minmax(33.333%, 32em) auto;
    display: grid;
    height: 100vh;
  }

  /* The style for the instructions. */
  style instructions {
    padding: 1.5em;
  }

  /* The style for the sidebar. */
  style sidebar {
    background: var(--content-color);
    color: var(--content-text);
    grid-row: span 2;

    grid-template-rows: auto 1fr auto;
    min-height: 0;
    display: grid;
  }

  /* Styles for the editor. */
  style editor {
    display: grid;
  }

  /* Styles for the iframe. */
  style iframe {
    background: white;
    height: 100%;
    width: 100%;
    border: 0;
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
    border-bottom: 1px solid var(--content-border);
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
  fun showSolution (event : Html.Event) {
    updateSource(solution)
  }

  /* Renders the component. */
  fun render : Html {
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
            if (String.isNotBlank(lesson.solution)) {
              if (source != solution) {
                <Ui.Button
                  iconAfter={Ui.Icons:EYE}
                  onClick={showSolution}
                  label="Show Me"
                  type="danger"
                  href=""/>
              } else {
                <{  }>
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
        <Ui.Textarea
          onChange={updateSource}
          value={source}
          rows={5}/>
      </div>

      <iframe::iframe src={previewURL}/>
    </div>
  }
}
