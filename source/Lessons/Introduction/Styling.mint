component Lessons.Introduction.Styling {
  fun render : Html {
    <>
      <p>
        "In HTML you normally put your styles into a "
        <code>"<style>"</code>
        " element. In Mint you put it into "
        <code>"style"</code>
        " blocks."
      </p>

      <pre>
        <code>
          <{
            [
              "style base {",
              "  font-family: 'Comic Sans MS', cursive;",
              "  font-size: 2em;",
              "  color: purple;",
              "}"
            ]
            |> String.join("\n")
          }>
        </code>
      </pre>

      <p>
        "Style blocks are like CSS classes, they have a name and " \
        "can be added to any element in the component."
      </p>

      <p>
        "Styling is a topic so big that it has it's own chapter s" \
        "o stick around to learn everything about it!"
      </p>
    </>
  }
}
