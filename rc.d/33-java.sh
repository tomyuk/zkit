# for Sun JDK

# if [[ -d /usr/lib/jvm ]]; then
#     JAVA_HOME=$(echo /usr/lib/jvm/java-*-openjdk-* | sort -r | head -1)

#     if [[ -z $JAVA_HOME ]]; then
# 	if [[ -d /usr/java/default ]]; then
# 	    JAVA_HOME="/usr/java/default"
# 	fi
#     fi    

#     if [[ -n $JAVA_HOME ]]; then
# 	export JAVA_HOME
# 	export CLASSPATH=".:${ZKIT_PRIVATE}/java:${JAVA_HOME}/lib:${JAVA_HOME}/jre/lib:/usr/share/java"
# 	pathmunge ${JAVA_HOME}/jre/bin

# 	# TODO: move to private
# 	if [[ -d /opt/maven ]]; then
# 	    envpathmunge M2_HOME /opt/maven
# 	fi
# 	if [[ -d /opt/tomcat ]]; then
# 	    envpathmunge TOMCATHOME /opt/tomcat
# 	fi
# 	if [[ -d /opt/ant ]]; then
# 	    envpathmunge ANTHOME /opt/ant
# 	fi
#     fi
# fi

# Java環境設定（macOS向け）

# macOSのJava_HOMEを設定
if [[ -x /usr/libexec/java_home ]]; then
    # macOS標準のjava_homeコマンドを使用
    if JAVA_HOME=$(/usr/libexec/java_home 2>/dev/null); then
        export JAVA_HOME
    fi
elif [[ -d ${HOMEBREW_PREFIX}/opt/openjdk ]]; then
    # Homebrew OpenJDK
    export JAVA_HOME=${HOMEBREW_PREFIX}/opt/openjdk
elif [[ -d /Library/Java/JavaVirtualMachines ]]; then
    # 手動インストールされたJDK
    JAVA_HOME=$(ls -1d /Library/Java/JavaVirtualMachines/*/Contents/Home | head -1)
    export JAVA_HOME
fi

if [[ -n $JAVA_HOME ]]; then
    export CLASSPATH=".:${ZKIT_PRIVATE}/java:${JAVA_HOME}/lib"
    pathmunge "${JAVA_HOME}/bin"
    
    # Maven設定（Homebrew）
    if [[ -d ${HOMEBREW_PREFIX}/opt/maven ]]; then
        export M2_HOME=${HOMEBREW_PREFIX}/opt/maven
        pathmunge "${M2_HOME}/bin"
    fi
    
    # Gradle設定（Homebrew）
    if [[ -d ${HOMEBREW_PREFIX}/opt/gradle ]]; then
        export GRADLE_HOME=${HOMEBREW_PREFIX}/opt/gradle
        pathmunge "${GRADLE_HOME}/bin"
    fi
fi
