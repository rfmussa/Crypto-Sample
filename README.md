# Kraken Futures Sample Application
Demo application using Kraken Futures socket to display an OrderBook.

In order to generate all the code for the application please run in the console: 
```shell
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```


## Improvements to be made
- Fix git repo folder structure (remove crypto_app folder, change project path)
- Externalize Styles and Widgets
- Handle Socket reconnection
- Display Loading indicator
- Test SocketService (parsing json)
- Repository and SocketService tests
