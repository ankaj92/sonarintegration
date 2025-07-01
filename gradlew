#!/usr/bin/env sh

set -e

DIR="$(cd "$(dirname "$0")/gradle/wrapper" && pwd)"
GRADLE_WRAPPER_JAR="$DIR/gradle-wrapper.jar"

if [ ! -f "$GRADLE_WRAPPER_JAR" ]; then
  echo "Gradle wrapper jar not found. Please run './gradlew wrapper' first."
  exit 1
fi

exec java -jar "$GRADLE_WRAPPER_JAR" "$@"