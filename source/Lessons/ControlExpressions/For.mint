component Lessons.ControlExpressions.For {
  fun render : Html {
    <>
      <p>"As most other languages Mint has a structrue to iterate over certain data structures."</p>

      <p>"It looks like this:"</p>

      <pre>
        <code>"for (item of iterable) {\n  expression\n}"</code>
      </pre>

      <p>
        "Unlike in some languages "
        <code>"for"</code>

        " in Mint is an expression and not a statement, and becau" \
        "se of this it returns an "

        <code>"Array(item)"</code>
        " where "
        <code>"item"</code>
        " is type of the "
        <code>"expression"</code>
      </p>

      <p>
        "For only can iterate through these types: "
        <code>"Array(item)"</code>
        ", "
        <code>"Set(item)"</code>
        " and "
        <code>"Map(key,value)"</code>
      </p>
    </>
  }
}
