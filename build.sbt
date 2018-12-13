
organization := "hmi.flipper"
name := "flipper"
version := "2.0.0.1"

libraryDependencies ++=
  Seq(
    "ch.qos.logback" % "logback-classic" % "1.0.13",
    "javax.json" % "javax.json-api" % "1.1",
//    "org.glassfish" % "javax.json" % "1.0.4",
    "org.postgresql" % "postgresql" % "9.4.1212.jre7",

    "org.hamcrest" % "hamcrest-core" % "1.3" % Test,
    "junit" % "junit" % "4.12" % Test,
  )
