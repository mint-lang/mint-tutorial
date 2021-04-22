component Lessons.Introduction.DynamicAttributes {
  fun render : Html {
    <>
      <p>"You can use curly braces to control element attributes."</p>

      <p>
        "Our image is missing a "
        <code>"src"</code>
        " attribute — let's add one:"
      </p>

      <pre>
        <code>"<img src={src}/>"</code>
      </pre>
    </>
  }
}
