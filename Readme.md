Tras mucho estudio y dedicacion lograste conseguir tu primer trabajo en ciberseguridad, haciendo monitoreo de actividades en la red de la empresa PyJ Systems. 

En una de las revisiones descubres que hubo un acceso no autorizado a una de las carpetas que contenia informacion confidencial de la empresa, de acuerdo a las politicas de seguridad de la empresa se tiene que evaluar la disponibilidad, confidencialidad e integridad de los archivos que hay dentro de la carpeta. 

Durante las evaluaciones se verifico que la informacion sigue disponible y confiencial, por lo que es necesario verificar que la informacion de la empresa siga integra por lo que te asignan ese valor. 

De acuerdo a los ultimas revisiones de las normativas y politicas de seguridad, estos son los hash md5 de los archivos 

90965b0eb20e68b7d0b59accd2a3b4fd  copia.sh
0b29406e348cd5f17c2fd7b47b1012f9  log.txt
6d5e43a730490d75968279b6adbd79ec  pass.txt
129ea0c67567301df1e1088c9069b946  plan-A.txt
4e9878b1c28daf4305f17af5537f062a  plan-B.txt
66bb9ec43660194bc066bd8b4d35b151  script.py

Revisa si algun archivo fue alterado durante el ultimo ataque y de existir ¿cual seria?

## Solucion
Cree un script de bash el cual general los hash md5 de los archivos actuales y los compara con los antiguos. En grandes rasgos, el script hace lo siguiente:
Crea un archivo llamado current_md5.txt que contiene los hash de los archivos actuales y toma el archivo old_md5.txt, el cual contiene los hash de los archivos "viejos". Luego los compara y muestra en consola los archivos modificados (no coinciden los hash).

<img src="https://raw.githubusercontent.com/byteguy8/Images/main/Ejercicio-Cyberseguridad-1_current_md5.png">
Archivo current_md5.txt creado por el script.


<img src="https://raw.githubusercontent.com/byteguy8/Images/main/Ejercicio-Cyberseguridad-1_old_md5.png">
Archivo old_md5.txt modificado por el script

<img src="https://raw.githubusercontent.com/byteguy8/Images/main/Ejercicio-Cyberseguridad-1_result.png">
Output del script

Para que el script funcione debe de estar dentro del mismo directorio que PyJ_Systems (renombre el directorio para eliminar los espacios).
