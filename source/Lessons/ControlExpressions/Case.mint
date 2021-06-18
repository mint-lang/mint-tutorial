component Lessons.ControlExpressions.Case {
  fun render : Html {
    <>
      <p>
        "The "
        <code>"case"</code>
        " expression allows us to say \"if the data has this shape then do that\", which we call "
        <i>"pattern matching"</i>
        "."
      </p>

      <p>
        "Here we match on a "
        <code>"Number"</code>
        " and return a specific string for the values "
        <code>"0"</code>
        ", "
        <code>"1"</code>
        ", and "
        <code>"2"</code>
        ". The final branch matches any other value that did not match any of the previous branches."
      </p>

      <pre>
        <code>
          <{ @inline(../../../assets/lessons/control-expressions/case-01.txt) }>
        </code>
      </pre>

      <p>
        "The "
        <code>"case"</code>
        " expression is more powerful than this simple example shows and will be covering it in other lessons."
      </p>

      <p>
        "As an exercise you can add the branches for "
        <code>"3"</code>
        " and "
        <code>"4"</code>
        "."
      </p>
    </>
  }
}
