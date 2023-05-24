module Lessons {
  const PATTERN_MATCHING_IF_LET =
    {
      path: "/pattern-matchin/if-let",
      category: "Pattern Matching",
      title: "If-Let",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : String {
                  let value =
                    Maybe::Just({"Joe", Maybe::Just("Howdy")})

                  if let Maybe::Just({"Joe", Maybe::Just(greeting)}) = value {
                    "\#{greeting} to you too Joe!"
                  } else {
                    "Hello some person!"
                  }
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        `If` expressions can have a `let` statement with a pattern instead of
        the usual boolean condition.

        In that case, the truthy branch is only returned if the pattern matches
        the given value. All destructured variables are available in the truthy
        branch.

        This is basically a syntax sugar for a two branch `case` expression,
        however, there are some cases where it's useful while have less
        indentation.
        MARKDOWN
    }
}
