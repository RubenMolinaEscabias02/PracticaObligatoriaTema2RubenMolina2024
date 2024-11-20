# Free-to-Play Games App

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

## Estructura del Proyecto

El proyecto está estructurado de la siguiente manera:

lib/ ├── main.dart # Punto de entrada de la aplicación ├── presentation/ # Carpeta para las vistas y pantallas │ ├── screens/ │ │ └── home_screen.dart # Pantalla principal donde se muestran los juegos │ └── widgets/ │ └── juego_view_widget.dart # Widget para mostrar la información de un juego ├── models/ # Carpeta para los modelos de datos │ └── juego_model.dart # Modelo que representa los datos de un juego └── services/ # Carpeta para los servicios de la aplicación └── juego_service.dart # Servicio que realiza peticiones a la API

bash
Copiar código

## Instalación

1. Clona el repositorio en tu máquina local:

git clone https://github.com/tu_usuario/free-to-play-games-app.git
Accede al directorio del proyecto:

Copiar código
cd free-to-play-games-app
Instala las dependencias necesarias:

Copiar código
flutter pub get
Asegúrate de tener un emulador de Android o un dispositivo físico conectado para ejecutar la aplicación.

Ejecuta la aplicación:

bash
Copiar código
flutter run
Uso
Pantalla Principal
En la pantalla principal (HomeScreen), los usuarios pueden ver una lista de juegos gratuitos. Cada juego incluye:

Título
Descripción corta
Plataforma
Género
Imagen del juego
Filtro por Género
En la barra superior de la aplicación, los usuarios pueden:

Restablecer el filtro: El botón de restaurar permite eliminar cualquier filtro aplicado, mostrando todos los juegos disponibles.
Filtrar por género: El botón de "Juegos shooter" aplica un filtro para mostrar solo los juegos del género "shooter".
Carga de Juegos
Cuando la aplicación está cargando los juegos, se muestra un CircularProgressIndicator. Si hay un error al cargar los juegos o las imágenes, se muestra un mensaje de error o un ícono.

API Utilizada
La aplicación utiliza la Free-to-Play Games Database API para obtener los datos de los juegos gratuitos. Se requiere una clave de API para acceder a los datos.

Configuración de la API
La clave de la API se encuentra en el archivo juego_service.dart en la siguiente variable:

dart
Copiar código
Map<String, String> headers = {
  "x-rapidapi-host" : "free-to-play-games-database.p.rapidapi.com",
  "x-rapidapi-key" : "tu_clave_api"
};
Asegúrate de reemplazar "tu_clave_api" por tu propia clave de API de RapidAPI.
