# HandyGram

![HandyGram Logo](https://i.imgur.com/wLuzqu6.png)

A light Wear OS Telegram client written entirely
in Dart (still using the TDLib :p)

## Feature map

- [x] **Authorization**
    - [x] By QR
    - [x] 2FA *(cloud password)*
    - [ ] By phone number **(won't be done due to Telegram restrictions for third-party clients)**
- [ ] **Chat list**
    - [x] Main folder
    - [x] Pinned chats
    - [ ] Archive
    - [ ] Folders **(not planned to be done)**
- [ ] **Message rendering**
    - [x] Text *(text formatting isn't supported)*
    - [x] Photo *(with photo viewer! :p)*
    - [x] Video *(thumbnail + video player)*
    - [x] Stickers *(both video and photo ones. TGS stickers show up only thumbnail!)*
    - [x] GIFs *(Not all previews are working)*
    - [x] Voice notes
    - [ ] Video notes (working on it)
- [ ] **Calls**
    - [ ] Call menu
    - [ ] Call base logic
- [ ] **Menus**
    - [x] Home
    - [x] Chat
    - [x] Video player
    - [x] Photo viewer
    - [ ] User info
    - [ ] Chat info
    - [ ] Call menu
    - [x] Settings
- **Misc**
    - [x] Switch to `package:tdlib` rather than `package:telegram_client`
    - [x] Data saving between app restarts
    - [ ] Notifications

## Compatibility
* Samsung Galaxy Watch 4 (Wear OS 3)
  * Runs very good, but sometimes can stutter
* Oppo Watch (Wear OS 2)
  * Very strange unpredictable behaviour *(on v0.1.0, idk what's happening on v0.2.0)*

Feel free to test on other devices and post an issue if something wrong happens :p

## Building
* Install Git
* Install [Android Studio](https://developer.android.com/studio)
  * Install Android SDK
* Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
* Download HandyGram
  ```sh
  git clone https://github.com/HandyGram/app.git
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

