component Lessons.Introduction.DynamicAttributes {
  fun render : Html {
    <>
      <p>"You can use curly braces to control element or component attributes."</p>

      <p>
        "Our image is missing a "
        <code>"src"</code>
        " attribute — let's add one:"
      </p>

      <pre>
        <code>"<img src={src}/>"</code>
      </pre>

      <p>
        "When building web apps, it's important to make sure that" \
        " they're accessible to the broadest possible userbase, i" \
        "ncluding people with (for example) impaired vision or mo" \
        "tion, or people without powerful hardware or good intern" \
        "et connections."
      </p>

      <p>
        "To that end we should add the "
        <code>"alt"</code>

        " attribute that describes the image for people using scr" \
        "eenreaders, or people with slow or flaky internet connec" \
        "tions that can't download the image. Let's add it:"
      </p>

      <pre>
        <code>"<img src={src} alt=\"A man dances.\"/>"</code>
      </pre>

      <p>
        "We can use interpolation inside attributes. Try changing it to "
        <br/>
        <code>"\"\#{name} dances.\""</code>
        " — remember to declare a name variable in the "
        <code>"where"</code>
        " block."
      </p>
    </>
  }
}
