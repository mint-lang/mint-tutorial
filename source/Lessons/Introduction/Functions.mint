component Lessons.Introduction.Functions {
  fun render : Html {
    <>
      <p>
        "Functions plays a central role in Mint. For instance, every component "
        <strong>"must"</strong>
        " have a "
        <code>"render"</code>
        " function. That's why it's crucial you have a good understanding of how they work."
      </p>

      <p>
        "In Mint, every function starts with a lowercase letter and must only contain
    letters and numbers. The function must only contain a "

        <strong>"single expression"</strong>
        "."
      </p>

      <p>"What does that mean? If you're coming from a language such as
    JavaScript, the following example, while intuitive, won't compile:"</p>

      <pre>
        <code>"component Main {\n  fun render : Html {\n    name = \"World\"\n    <h1>\"Hello \#{name}!\"</h1>\n  }\n}"</code>
      </pre>

      <p>
        "You can't declare variables in the function body. Instead, we use a "
        <code>"where"</code>
        " block:"
      </p>

      <pre>
        <code>"component Main {\n  fun render : Html {\n    <h1>\"Hello \#{name}!\"</h1>\n  } where {\n    name = \"World\"\n  }\n}"</code>
      </pre>

      <p>"We can even declare multiple variables at once:"</p>

      <pre>
        <code>"component Main {\n  fun render : Html {\n    <h1>\"\#{greeting}, \#{name}!\"</h1>\n  } where {\n    greeting = \"Howdy\"\n    name = \"World\"\n  }\n}"</code>
      </pre>

      <p>
        "Let's give it a shot! Declare a "
        <code>"name"</code>
        " variable in your "
        <code>"render"</code>
        " function and replace the currently hardcoded greeting."
      </p>
    </>
  }
}
