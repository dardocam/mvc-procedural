# mvc-procedural

Plantilla MVC - Evaluación por capacidades - Integradora

# Descripcion

### Aproximación en el contexto de la escuela Técnica del patrón de diseño MVC

- Todas las peticiones van dirigidas al archivo _index.php_
- Por URL método GET se envían las variables de ruteo
- Dentro de la carpeta core el archivo router.php
- Cuando se envían datos por el método POST se rutea hacia los controladores.
- La carpeta _core_ contiene los archivos que necesita la aplicación para funcionar.

# Router.php

- http://localhost/dwd-proyecto/index.php?page=login
- Se envía la variable page
- La función routingPages( _$pages_ ) recibe un _array_ con las rutas que configura el usuario _$pages_
- La función busca hacer _match_ entre el arreglo _$pages_ y la variable _page_ contenida en el super-global $\_GET
- Si hace _match_ incluye la vista que se encuentra en la carpeta _view_
- Cada artefacto finaliza con el nombre que le corresponde. Ej: _"homeView.php"_
- La función routingControllers( _$controllers_ ) recibe un _array_ con los controladores de la aplicación

# Controladores

- Los controladores son los encargados de conectar con la base de datos.
- Se almacenan en la carpeta _controller_ Ej: _"usuarioController.php"_
- Se invocan en el atributo _action_ de los formularios HTML
- http://localhost/dwd-proyecto/index.php?controller=usuario&action=ingresar
- Por la URL se envía el nombre del controlador y la función que tiene que llamar dentro del mismo.
