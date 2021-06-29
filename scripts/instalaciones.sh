# Actualizamos el sistema
apt-get update -y
apt-get upgrade -y
# La instalacion de Java1.8 requeire que se cree esta carpeta
# más información: https://stackoverflow.com/questions/58160597/docker-fails-with-sub-process-usr-bin-dpkg-returned-an-error-code-1
mkdir -p /usr/share/man/man1
# Intalando vim
apt-get install vim -y
# Instalacion para java
# La información de la instalacion se encotro en el siguietne link:
# https://linuxize.com/post/install-java-on-debian-10/
apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
apt update
apt install adoptopenjdk-8-hotspot -y
java -version
