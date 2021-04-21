/* The file structure for the compiler request. */
record RequestFile {
  contents : String,
  path : String
}

/* The compiler request data structure. */
record RequestData {
  files : Array(RequestFile)
}

/* The data structure for the lesson. */
record Lesson {
  category : String,
  solution : String,
  contents : Html,
  source : String,
  title : String,
  path : String
}
