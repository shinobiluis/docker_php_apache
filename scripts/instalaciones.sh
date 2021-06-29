apt-get update -y
apt-get upgrade -y
mkdir -p /usr/share/man/man1
# Intalando vim
apt-get install vim -y
# Instalacion para java
apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
apt update
apt install adoptopenjdk-8-hotspot -y
java -version
