module Lessons {
  const LANGUAGE_OPERATORS =
    {
      path: "/language/operators",
      category: "Language",
      title: "Operators",
      files:
        [
          {
            title: "Main.mint",
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <div>
                    <{ "Hello " + "World!" }><br/>
                    <{ Number.toString(0 + 10) }><br/>
                    <{ Bool.toString(true || false) }><br/>
                    <{ Bool.toString(true && false) }><br/>
                    <{ Bool.toString(0 != 1) }><br/>
                    <{ Bool.toString(1 != 0) }><br/>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        {
          let rows =
            for operator of [
              {"|>", 0, "Pipe"},
              {"or", 0, "Fallback"},
              {"||", 5, "Logical OR"},
              {"&&", 6, "Logical AND"},
              {"!=", 10, "Nonequality comparison"},
              {"==", 10, "Equality comparison"},
              {"<=", 11, "Less than or equal to comparison"},
              {"<", 11, "Less than comparison"},
              {">=", 11, "Greater than comparison"},
              {">", 11, "Greater than or equal to comparison"},
              {"-", 13, "Arithmetic subtraction"},
              {"+", 13, "Arithmetic addition"},
              {"*", 14, "Arithmetic multiplication"},
              {"/", 14, "Arithmetic division"},
              {"%", 14, "Arithmetic remainder"},
              {"**", 15, "Arithmentic Exponentiation"},
              {"!", 16, "Negation"}
            ] {
              {
                operator[0],
                [
                  Ui.Cell::Code(code: operator[0], breakSpaces: false),
                  Ui.Cell::Number(operator[1]),
                  Ui.Cell::String(operator[2])
                ]
              }
            }

          let table =
            <Ui.Table
              headers=[
                {
                  sortKey: "operator",
                  label: "Operator",
                  sortable: false,
                  shrink: true
                },
                {
                  sortKey: "precedence",
                  label: "Precedence",
                  sortable: false,
                  shrink: true
                },
                {
                  sortKey: "description",
                  label: "Description",
                  sortable: false,
                  shrink: false
                }
              ]
              bordered={false}
              breakpoint={0}
              rows={rows}/>

          <<#MARKDOWN
          Mint supports the following operators (with precedence):

          #{table}

          * Equality and comparison opertors only work on the same types.
          * Arithmetic operators only work on `Number`
          * `or` only works on `Result` and `Maybe`
          * `+` only works on `String` and `Number`
          MARKDOWN
        }
    }
}
