/* The file structure for the compiler request. */
record RequestFile {
  contents : String,
  path : String
}

/* The compiler request data structure. */
record RequestData {
  files : Array(RequestFile)
}

record LessonFile {
  solution : String,
  contents : String,
  title : String,
  path : String
}

/* The data structure for the lesson. */
record Lesson {
  files : Array(LessonFile),
  category : String,
  contents : Html,
  title : String,
  path : String
}
