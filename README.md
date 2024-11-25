# Stream Lab

**Experience the power of real-time communication.**

Stream Lab is a Flutter web application designed to streamline testing and experimentation with Socket.IO connections and events. By leveraging the **Flutter Bloc architecture** for state management and **Hive** for local data storage, Stream Lab empowers developers to create and manage multiple Socket.IO connections seamlessly.

## Key Features

- **Multiple Connection Support**: Create and manage multiple Socket.IO connections, saving them locally for quick access.
- **Custom Connection Configurations**: Easily configure connection names, server URLs, headers, and authentication data.
- **Event Emitters and Listeners**: Add, edit, and manage multiple event emitters and listeners to test various real-time scenarios.
- **Flexible Data Handling**: Edit event emitters with support for JSON, Text, or no data, ensuring comprehensive testing.
- **Enable/Disable Listeners**: Focus testing on specific interactions by toggling event listeners.

## Why Stream Lab?

Developers often face challenges testing various connection scenarios and event emissions when working with Socket.IO. Stream Lab resolves these challenges with:

- A **user-friendly interface** for seamless navigation and setup.
- **Efficient data management** using Hive for local storage.
- Comprehensive testing features for real-time communication.

## How It Works

1. **Set Up Connections**

   - Define connection names and server URLs.
   - Configure headers and authentication data.

2. **Manage Events**

   - Add emitters to simulate events with custom data.
   - Set up listeners to monitor real-time events.

3. **Experiment & Test**
   - Enable or disable listeners to test specific scenarios.
   - Validate and refine your Socket.IO implementation with ease.

## Vision

Stream Lab simplifies the complexities of working with Socket.IO by offering a comprehensive, developer-friendly platform. Its innovative approach enables:

- Effortless experimentation with real-time connections.
- Detailed debugging for stable and efficient implementations.
- Quick switching between multiple saved configurations.

## Built With

- **Flutter**: For a robust, cross-platform application.
- **Flutter Bloc**: Ensures responsive and interactive state management.
- **Hive**: Provides lightweight and efficient local data storage.

## Accessibility & Optimization

Stream Lab is designed with a commitment to:

- **Accessibility**: Intuitive layouts and tooltips for effortless navigation.
- **Performance**: Optimized to handle multiple connections and events smoothly.

## Installation

Follow these steps to set up Stream Lab on your local machine:

1. Clone the repository:

   ```bash
   git clone https://github.com/vishnucprasad/stream_lab
   cd stream-lab
   ```

2. Install Flutter dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run -d chrome
   ```

   Ensure you have Flutter set up for web development. Refer to [Flutter’s documentation](https://docs.flutter.dev/get-started/web) for more details.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
