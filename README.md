# Weather App 🌤️

Welcome to the Weather App, a sleek and intuitive Flutter application designed to provide you with accurate and up-to-date weather information for any location. 

## Getting Started 🚀

This project is a perfect starting point for your Flutter application journey. Follow the steps below to set up and run the Weather App on your local machine.

### Prerequisites 📋

Before you begin, ensure you have met the following requirements:
- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Android Studio or Visual Studio Code with Flutter extensions

### Installation 🔧

1. **Clone the repository**
    ```sh
    git clone https://github.com/your-username/weather-app.git
    cd weather-app
    ```

2. **Install dependencies**
    ```sh
    flutter pub get
    ```

3. **Configure API Key**
   - Obtain an API key from [OpenWeatherMap](https://openweathermap.org/api).
   - Replace `'YOUR_API_KEY_HERE'` in `WeatherService` with your actual API key.

4. **Run the application**
    ```sh
    flutter run
    ```

### Features ✨

- **Current Weather Information**: Get real-time weather updates for any city.
- **Dynamic Backgrounds**: The app changes its background color based on the weather condition.
- **Location Services**: Automatically fetches the weather for your current location.
- **Beautiful Animations**: Uses Lottie animations to depict different weather conditions.

### Screenshots 📸

<p align="center">
  <img src="screenshots/abcd.png" width="250" alt="Cloudy Weather">
</p>

### Usage 📝

Upon launching the app, it will request permission to access your location. If granted, it will display the weather for your current city. You can also search for weather in different cities.

### Technologies Used 🛠️

- [Flutter](https://flutter.dev/) - A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- [Geolocator](https://pub.dev/packages/geolocator) - A Flutter plugin to easily access platform-specific location services.
- [Geocoding](https://pub.dev/packages/geocoding) - A Flutter geocoding plugin.
- [HTTP](https://pub.dev/packages/http) - A package to send requests and receive responses from the internet.
- [Lottie](https://pub.dev/packages/lottie) - A package for rendering Lottie animations.

### Contributing 🤝

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### License 📄

Distributed under the MIT License. See `LICENSE` for more information.

### Acknowledgements 🙏

- [OpenWeatherMap](https://openweathermap.org/) for providing the weather API.
- [LottieFiles](https://lottiefiles.com/) for providing beautiful animations.

---

<p align="center">
  Made with ❤️ by Ishan Sasane(https://github.com/ishansasane)
</p>
