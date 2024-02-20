# dottedcarasoulslider

`dottedcarasoulslider` Flutter widget adds dots to the carasoulslider .

![demo](https://user-images.githubusercontent.com/29194552/148517560-6f41a081-9b34-4975-9052-a2855d46b555.gif)

## Features

 - adding a dots in a carsouls
 - simply add a colors and images

## Getting started

To use this package, add dottedcarasoulslider as a dependency in your pubspec.yaml file.

## Usage

```dart
 DottedCarasoulSlidermultipleImages(
        addDots: true,
        autoplay: true,
        reverse: false,
        dotActiveColor: Colors.red,
        dotInActiveColor: Colors.yellow,
        imgUrls: const [
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D",
        ],
        duration: const Duration(seconds: 3),
        height: 100,
        width: MediaQuery.of(context).size.width,
      )),
```
## See also

 - [https://github.com/Sagarkhemnar8308/dottedcarasoulslider]
