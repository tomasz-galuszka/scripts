# == CONFIGURATION ==
DESTINATION_DIR=/usr/local/java
JDK_VERSION_TMP=jdk1.7.0_71

# == ENV VARIABLES ==
JAVA_HOME=${DESTINATION_DIR}/${JDK_VERSION_TMP}
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH

# == INSTALLATION ==
sudo update-alternatives --install "/usr/bin/java" "java" "${DESTINATION_DIR}/${JDK_VERSION_TMP}/bin/java" 1  && \
sudo update-alternatives --install "/usr/bin/javac" "javac" "${DESTINATION_DIR}/${JDK_VERSION_TMP}/bin/javac" 1  && \
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "${DESTINATION_DIR}/${JDK_VERSION_TMP}/bin/javaws" 1  && \
sudo update-alternatives --set java ${DESTINATION_DIR}/${JDK_VERSION_TMP}/bin/java  && \
sudo update-alternatives --set javac ${DESTINATION_DIR}/${JDK_VERSION_TMP}/bin/javac  && \
sudo update-alternatives --set javaws ${DESTINATION_DIR}/${JDK_VERSION_TMP}/bin/javaws

source /etc/profile

java -version

