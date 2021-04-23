component Lessons.Introduction.Composition {
  fun render : Html {
    <>
      <p>
        "It would be impractical to put your entire app in a sing" \
        "le component. Instead, we can write components in other " \
        "files and use them as we would other elements."
      </p>

      <p>
        "Once your component is ready all you need to do is add i" \
        "t as markup:"
      </p>

      <pre>
        <code>"<Nested/>"</code>
      </pre>

      <p>
        "You can notice that there is no "
        <code>"import"</code>
        " keyword. That's because the compiler finds all "
        <code>".mint"</code>

        " files in your project and parses them automatically. An" \
        "ything in them is available everywhere."
      </p>

      <p>
        "Also notice that the component name "
        <code>"Nested"</code>

        " is capitalised. This convention has been adopted to all" \
        "ow us to differentiate between user-defined components a" \
        "nd regular HTML tags."
      </p>
    </>
  }
}
