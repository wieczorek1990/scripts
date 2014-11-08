version=jdk1.8.0_25
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/${version}/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/${version}/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/${version}/bin/javaws" 1
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config javaws
