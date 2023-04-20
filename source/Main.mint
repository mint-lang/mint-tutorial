/* The main component. */
component Main {
  fun componentDidMount {
    `hljs.configure({ languages: ['mint'] })`
  }

  fun render : Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={Ui:DEFAULT_TOKENS}>

      <Workspace/>

    </Ui.Theme.Root>
  }
}
