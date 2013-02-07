# for Sun JDK

JAVA_HOME=$(echo /usr/lib/jvm/java-*-openjdk-*(N) | sort -r | head -1)

if [[ -z $JAVA_HOME ]]; then
    if [[ -d /usr/java/default ]]; then
	JAVA_HOME="/usr/java/default"
    fi
fi    

if [[ -n $JAVA_HOME ]]; then
    export JAVA_HOME
    export CLASSPATH=".:${ZKIT_PRIVATE}/java:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib:/usr/share/java"
    pathmunge ${JAVA_HOME}/jre/bin

    # TODO: move to private
    if [[ -d /opt/maven ]]; then
	envpathmunge M2_HOME /opt/maven
    fi
    if [[ -d /opt/tomcat ]]; then
	envpathmunge TOMCATHOME /opt/tomcat
    fi
    if [[ -d /opt/ant ]]; then
	envpathmunge ANTHOME /opt/ant
    fi
fi
