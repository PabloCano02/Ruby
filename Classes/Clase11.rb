#Protocolo HTTP

#Trabaja bajo el modelo request-response (petición-repuesta)
#Se maneja con un request de un cliente a un servidor y el servidor genera el response
#El request va a estar asociado a una URI (uniform Resource Identifier)
#El protocolo es Statelessness -> no va a guardar su estado en ninguna parte
#Soporta metadatos

#Hyperlink
#URL (Uniform Resource Locator): Es el dominio donde se encuentra el recurso en internet
#URI (Uniform Resource Identifier): Identificador único completo de dicho recurso en internet, contiene URL + URN

#Métodos HTTP
#Indican que quiero hacer con el recurso que estoy solicitando
#Los métodos son: GET (obtener información), POST (enviar datos al servidor), PUT (editar información en un
#servidor), DELETE (eliminar información en un servidor), HEAD, OPTIONS, TRACE, CONNECT, PATCH

#¿Cómo se transfieren datos a un servidor?
#Para realizar una petición se envía la URI y el método HTTP, adicional se envian los metadatos y también se
#adiciona la información que se quiera hacer llegar mediante un formulario, una caja de texto.
#Se envían mediante un diccionario -> key = value

#Statelessness
#Navegador ---------------------------#Servidor
#GET/pagina privada ---------------------->
# <--------------------------------- ¿Quién eres?
#GET/login ------------------------------->
# <--------------------------------- Envia formulario de autenticación
#POST/login ------------------------------>
# <--------------------------------- Hola admin
#GET/pagina privada ---------------------->
# <--------------------------------- ¿Quién eres?

#Cookies
#HTTP es un servidor de protocolo sin estado, que no mantiene información sobre la transacción
#Las cookies gestionan el mantenimiento del estado trasladando la carga al cliente
#Las cookies se transmiten en texto claro (problema de seguridad)

#Cliente -----------------------------#Servidor
#Primer requerimiento
#requerimiento HTTP usual ---------------------->
# <--------------------------------- Respuesta HTTP usual. Including header line set-cookie: <cookie>
#Segundo requerimiento
#requerimiento HTTP usual. Including header line set-cookie: <cookie> ---------------------->
# <--------------------------------- Respuesta HTTP usual

#Arquitecturas
#Es la forma en que se organizan los componentes y se comunican entre ellos para cumplir con los requisitos
#no funcionales del sistema (cantidad de cargas, escalabilidad, funcionalidad, etc)
#El ejemplo clásico de arquitectura es el de tres capas, es la arquitectura clásica del desarrollo web
#Se divide en tres capas: nivel 1 -> cliente (interfaz gráfica del usuario o el frontend, ese cliente va a
#enviar peticiones HTTP al servidor), nivel 2 -> servidor web (Es donde se guarda la lógica del negocio,
#es donde se tienen los controladores de la aplicación y en cierto caso coordina el acceso a datos que
#requiere la aplicación para funcionar, recibe los request y envia los response), nivel 3 -> base de datos
#(Se encarga de acceder a la base de datos donde se guarda la información de la aplicación en funcionamiento)

#Backend: también llamado desarrollo del lado del servidor
#Frontend: también llamado desarrollo del lado del cliente
#Lado del servidor: el código del programa se ejecuta en la máquina del servidor (servidor web)
#Lado del cliente: el código del programa se ejecuta en la máquina del cliente (navegador web)

#Servidor de base de datos: almacenar datos
#Servidor web: contiene el código de programa del sistema que proporciona lógica comercial y capa de acceso
#a datos (interacción entre el servidor web y la base de datos)
#No existe una separación explícita entre Frontend y Backend
#Todas las acciones se manejan en el servidor (Backend)
#El código de fondo genera dinámicamente páginas web basadas en los datos de un usuario

#PATRÓN MVC
#Es una forma de organizar la arquitectura de tres capas

#Flujo de información en el patrón MVC
#El cliente genera una solicitud al servidor
#La solicitud se está procesando bajo la capa de presentación (ej.: haga clic en el botón)
#Procesamiento de los datos de la capa de presentación en la capa de negocio
#Comunicación de la capa de negocio con la capa de Base de Datos
#Procesar los datos que fueron devueltos desde el nivel de datos (ej.: algunos conjuntos de resultados deben
#convertirse a otro formato)
#El nivel de presentación que genera dinámicamente el diseño HTML depende de los datos del nivel comercial
