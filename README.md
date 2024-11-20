# Juegos Gratis App

Este proyecto es una aplicación en Flutter que muestra una lista de juegos gratuitos, permitiendo a los usuarios filtrar los juegos por género. La información de los juegos se obtiene desde una API externa.

## Características

- **Listado de juegos gratuitos**: Se muestran juegos gratuitos con su título, descripción corta, plataforma y género.
- **Filtro por género**: El usuario puede aplicar un filtro para mostrar solo juegos de un género específico (por ejemplo, "shooter").
- **Indicadores de carga**: Mientras se cargan los juegos, la aplicación muestra un indicador de carga.
- **Manejo de errores**: En caso de error en la carga de imágenes o datos, se muestra un mensaje de error o un icono de error.

## Tecnologías Utilizadas

- **Flutter**: Framework de desarrollo para la creación de aplicaciones móviles nativas para iOS y Android.
- **Dart**: Lenguaje de programación utilizado por Flutter.
- **API de Free-to-Play Games**: API utilizada para obtener la lista de juegos gratuitos y sus detalles.
- **HTTP**: Paquete utilizado para realizar peticiones a la API.
- **Material Design**: Estilo de diseño para la interfaz de usuario.

## Instalación

1. Clona el repositorio en tu máquina local:

git clone https://github.com/tu_usuario/free-to-play-games-app.git

2. Accede al directorio del proyecto:

3. Instala las dependencias necesarias:

flutter pub get

4. Asegúrate de tener un emulador de Android o un dispositivo físico conectado para ejecutar la aplicación.

5. Ejecuta la aplicación:
   
flutter run

## Uso

### Pantalla Principal

En la pantalla principal (`HomeScreen`), los usuarios pueden ver una lista de juegos gratuitos. Cada juego incluye:

- **Título**
- **Descripción corta**
- **Plataforma**
- **Género**
- **Imagen del juego**

### Filtro por Género

En la barra superior de la aplicación, los usuarios pueden:

- **Restablecer el filtro**: El botón de restaurar permite eliminar cualquier filtro aplicado, mostrando todos los juegos disponibles.
- **Filtrar por género**: El botón de "Juegos shooter" aplica un filtro para mostrar solo los juegos del género "shooter".

### Carga de Juegos

Cuando la aplicación está cargando los juegos, se muestra un **CircularProgressIndicator**. Si hay un error al cargar los juegos o las imágenes, se muestra un ícono.

## API Utilizada

La aplicación utiliza la [Free-to-Play Games Database API](https://rapidapi.com/rapidapi/api/free-to-play-games-database) para obtener los datos de los juegos gratuitos. Se requiere una clave de API para acceder a los datos.

### Configuración de la API

La clave de la API se encuentra en el archivo `juego_service.dart` en la siguiente variable:

```dart
Map<String, String> headers = {
  "x-rapidapi-host" : "free-to-play-games-database.p.rapidapi.com",
  "x-rapidapi-key" : "tu_clave_api"
};
cambia "tu_clave_api" por tu clave api

