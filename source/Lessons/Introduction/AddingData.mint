component Lessons.Introduction.AddingData {
  fun render : Html {
    <>
      <p>
        "A component that just renders some static markup isn't v" \
        "ery interesting. Let's add some data."
      </p>

      <p>
        "First we need to modify the "
        <code>"render"</code>
        " function to include a helper variable."
      </p>

      <p>
        "Since in Mint a function can have only expression we nee" \
        "d to put our  variable in the "

        <code>"where"</code>
        " block after the functions body:"
      </p>

      <pre>
        <code>"fun render : String {\n\  \"Hello World!\"\n} where {\n  name =\n    \"world\"\n}"</code>
      </pre>

      <p>
        "Then, we can refer to "
        <code>"name"</code>
        " in the markup like this:"
      </p>

      <pre>
        <code>"\"Hello \#{name}!\""</code>
      </pre>

      <p>
        "Inside the interpolation ("
        <code>"\#{...}"</code>
        "), we can put any Mint code we want. Try changing name to "
        <code>"String.toUpperCase(name)"</code>
        " for a shoutier greeting."
      </p>
    </>
  }
}
