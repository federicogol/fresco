# Fresco with libjpeg-turbo 2.0.4

This is a fork of the [Fresco](http://frescolib.org/) image library for Android, developed by Facebook. This version of Fresco has been updated to use libjpeg-turbo 2.0.4 instead of the original libjpeg-turbo 1.5.3.

## Features

- Memory-efficient image loading and caching.
- Support for streaming images from various sources.
- Automatic display of placeholders until the image loads.
- Support for animated GIFs and WebPs.
- Progressive JPEG loading.
- Focus point specification for images.
- Event listeners for various image loading events.
- Image resizing and rescaling.
- Support for round corners and circular images.

## Changes in this Fork

- Updated the underlying JPEG library to libjpeg-turbo 2.0.4 for improved performance and compatibility.

## Installation

To use this fork in your project, add the following to your `build.gradle` file:

```gradle
dependencies {
    implementation 'com.tactivos.fresco:libjpeg-turbo:2.0.4'
}
```

## Usage

Refer to the [original Fresco documentation](http://frescolib.org/docs/index.html) for usage instructions. The API remains the same as the original Fresco library.

## Contributing

Contributions are welcome. Please open an issue to discuss your ideas or submit a pull request with your changes.

## License

This project is licensed under the same terms as the original Fresco project. See the [LICENSE](LICENSE) file for more information.

