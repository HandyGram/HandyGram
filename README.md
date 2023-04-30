# HandyGram

![HandyGram Logo](https://i.imgur.com/wLuzqu6.png)

A light Wear OS Telegram client written entirely
in Dart (still using the TDLib :p)

## Feature map

- [v] **Authorization**
    - [v] By QR
    - [v] 2FA *(cloud password)*
    - [x] By phone number **(won't be done due to Telegram restrictions for third-party clients)**
- [ ] **Chat list**
    - [v] Main folder
    - [v] Pinned chats
    - [x] Archive
    - [x] Folders **(not planned to be done)**
- [ ] **Message rendering**
    - [v] Text *(text formatting isn't supported)*
    - [v] Photo *(with photo viewer! :p)*
    - [v] Video *(thumbnail + video player)*
    - [v] Stickers *(both video and photo ones. TGS stickers show up only thumbnail!)*
    - [v] GIFs *(Not all previews are working)*
    - [v] Voice notes
    - [x] Video notes (working on it)
- [x] **Calls**
    - [x] Call menu
    - [x] Call base logic
- [ ] **Menus**
    - [v] Home
    - [v] Chat
    - [v] Video player
    - [v] Photo viewer
    - [x] User info
    - [x] Chat info
    - [x] Call menu
    - [v] Settings
- **Misc**
    - [v] Switch to `package:tdlib` rather than `package:telegram_client`
    - [v] Data saving between app restarts
    - [x] Notifications

## Compatibility
* Samsung Galaxy Watch 4 (Wear OS 3)
  * Runs very good, but sometimes can stutter
* Oppo Watch (Wear OS 2)
  * Very strange unpredictable behaviour

Feel free to test on other devices and post an issue if something wrong happens :p

## Building
* Install Git
* Install [Android Studio](https://developer.android.com/studio)
  * Install Android SDK
* Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
* Download HandyGram
  ```sh
  git clone https://github.com/tdrkDev/handygram.git
  ```
* Obtain API keys from [My Telegram](https://my.telegram.org)
* Insert your keys in `lib/src/telegram/api_config.dart`
* Go into HandyGram directory
  ```sh
  cd handygram
  ```
* Build HandyGram as apk
  ```sh
  flutter build apk
  ```
* You can see build apk in `build/app/outputs/flutter-apk/app-release.apk`!

## Installation
* Install ADB
* Enable Wi-Fi debugging on your watch
* Connect to watch
  ```sh
  adb connect WATCH_IP:5555
  ```
* Install apk
  ```sh
  adb install build/app/outputs/flutter-apk/app-release.apk
  ```

## Credits

* [me](https://github.com/tdrkDev) for HandyGram
* All TDLib developers for TDLib
* [i-Naji](https://github.com/i-Naji) for [Dart TDLib wrapper](https://github.com/i-Naji/tdlib)
* All used plugins' developers

