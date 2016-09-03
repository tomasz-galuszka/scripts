# == CONFIGURATION == (copy to: /etc/profile)
JAVA_HOME=/usr/lib/jvm/jdk
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH

# == INSTALLATION ==
source /etc/profile
sudo update-alternatives --install "/usr/bin/java" "java" "${JAVA_HOME}/bin/java" 1  && \
sudo update-alternatives --install "/usr/bin/javac" "javac" "${JAVA_HOME}/bin/javac" 1  && \
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "${JAVA_HOME}/bin/javaws" 1  && \
sudo update-alternatives --set java ${JAVA_HOME}/bin/java  && \
sudo update-alternatives --set javac ${JAVA_HOME}/bin/javac  && \
sudo update-alternatives --set javaws ${JAVA_HOME}/bin/javaws

java -version

