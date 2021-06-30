# Iniciar docker

Para este docker solo requiere ejecutar:

`docker-compose up -d`

Esto ejecutara el docker sin problema, en el Dockerfile esta la version de php que se instalara asi como todas las intalaciones extras que se erequiere.

# Acceder al Docker

Para acceder al docker solo se requiere ejecutar:

`docker excet -ti php_apache bash`

Al dar enter entraras.

# PHP Versión

Dentro del docker podras ejecutar:
8
`php -v`

La version instalada es: 7.2

# Apache Versión

Dentro del docker podras ejecutar:

`apachectl -v`

# Java version

Dentro del docker podras ejecutar:

`java -version`


La version intalada es: Apache/2.4.38

# Sistema Versión

Dentro del docker se puede ejecutar

`cat /etc/*release`

La informacion que muestra este comando es la siguente

```
PRETTY_NAME="Debian GNU/Linux 10 (buster)"
NAME="Debian GNU/Linux"
VERSION_ID="10"
VERSION="10 (buster)"
VERSION_CODENAME=buster
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
```

# Validar Java

Si quieres validar el funcionamiento de java puedes escribir y ejecutar un hola mundo.
Dendtro del docker puedes crear un archivo

`vim HolaMundo.java`

Y dentro de el escribir:

```java
public class HolaMundo {

	public static void main(String[] args) {		
		System.out.println("Hola Mundo");
	}

}
```
Para compilar y ejecutar este código tendremos que ejecutar las siguientes sentencias:

`javac HolaMundo.java`
`java HolaMundo`

# Acceder al sitio

El código del sitio esta en la carpeta www y es un volumen por lo que todo lo que se configure en el sera visible desde el puerto 80 del navegador, para acceder a el en tu navegador escribe la siguiente url: `http://localhost/` ahi veras un php info con la inforamción del php.
