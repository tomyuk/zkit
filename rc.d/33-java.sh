# for Sun JDK

envpathmunge JAVA_HOME "/usr/java/default"
if [[ -n "$JAVA_HOME" ]]; then
    export CLASSPATH=".:${zkit_private}/java:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib:/usr/share/java"

    envpathmunge M2_HOME /opt/maven
    envpathmunge TOMCATHOME /opt/tomcat
    envpathmunge ANTHOME /opt/ant
fi    
