#!/bin/bash
export GRADLE_OPTS=-Dorg.gradle.daemon=false
export PATH=$PATH:./gradle/wrapper/
./gradle/wrapper/gradle-wrapper.jar "$@"
