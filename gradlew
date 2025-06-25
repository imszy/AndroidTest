#!/bin/sh
#
# Copyright 2015 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG="`dirname "$PRG"`/$link"
    fi
    done
SAVED="`pwd`"
cd "`dirname "$PRG"`/.." >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

# Make sure JAVA_HOME is set.
if [ -z "$JAVA_HOME" ] ; then
    JAVA_HOME="$(dirname $(dirname $(readlink -f $(which javac))))"
fi

if [ -n "$JAVA_HOME" ] ; then
    JAVA="$JAVA_HOME/bin/java"
    if [ ! -x "$JAVA" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" 1>&2
        echo "Please set the JAVA_HOME variable in your environment to match the location of your Java installation." 1>&2
        exit 1
    fi
else
    JAVA=java
fi

# For Cygwin, ensure paths are in UNIX format before anything is touched.
if $cygwin ; then
    [ -n "$JAVA_HOME" ] && JAVA_HOME=`cygpath --unix "$JAVA_HOME"`
    [ -n "$APP_HOME" ] && APP_HOME=`cygpath --unix "$APP_HOME"`
fi

# Escape application args
save () {
    for i; do
        printf '%s\n' "$i"
    done | sed 's/'"'/'"'\\''"'/g'
}

APP_ARGS=("$@")

exec "$JAVA" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "${APP_ARGS[@]}" 