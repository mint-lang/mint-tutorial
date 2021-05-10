component Lessons.ControlExpressions.If {
  fun render : Html {
    <>
      <p>
        "As most other languages Mint has a structrue to return d" \
        "ifferent values based on some condition."
      </p>

      <p>"It looks like this:"</p>

      <pre>
        <code>"if (condition) {\n  ...\n} else {\n  ...\n}"</code>
      </pre>

      <p>
        "Unlike in some languages "
        <code>"if"</code>

        " in Mint is an expression and not a statement, and becau" \
        "se of this both branches need to return something and th" \
        "ose need to be of the same type."
      </p>

      <p>
        "With this information you should be able update the code" \
        " to display the correct button based on the "

        <code>"userLoggedIn"</code>
        " state."
      </p>
    </>
  }
}
