#!/bin/sh
#
# Gradle wrapper script for Unix-like systems
#

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

# Resolve the app home directory
APP_HOME="$(cd "$(dirname "$0")" && pwd)"

# Classpath for the wrapper bootstrap
CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# Execute the wrapper
exec "$JAVACMD" \
  -classpath "$CLASSPATH" \
  org.gradle.wrapper.GradleWrapperMain \
  "$@"
