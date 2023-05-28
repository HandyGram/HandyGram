![HandyGram poster](https://i.imgur.com/KGJWaNo.png)


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
    - [ ] Folders
- [ ] **Message rendering**
    - [x] Text *(text formatting isn't supported yet)*
    - [x] Photo *(with photo viewer! :p)*
    - [x] Video *(thumbnail + video player)*
    - [x] Stickers
    - [x] GIFs
    - [x] Voice notes
    - [ ] Video notes (working on it)
- [ ] **Message sending**
    - [x] Text *(text formatting isn't supported)*
    - [x] Stickers
    - [x] GIFs
    - [x] Voice notes
    - [ ] Photos
- [ ] **Calls**
    - [ ] Call menu
    - [ ] Call base logic
- [x] **Menus**
    - [x] Home
    - [x] Chat
    - [x] Video player
    - [x] Photo viewer
    - [x] User info
    - [x] Chat info
    - [x] Voice, text, sticker, GIF message send pages
    - [x] Settings
- **Misc**
    - [x] Data saving between app restarts
    - [x] In-app clock!!1!1!
    - [ ] Notifications

## Compatibility
* Samsung Galaxy Watch 4/5 (Wear OS 3)
* Oppo Watch (Wear OS 2)
  * Runs very good, but sometimes can stutter
* TicWatch Pro 3 Ultra (Wear OS 2)
  * Some instabilities in visualization of videos

Feel free to test on other devices and post an issue if something wrong happens :p

## Download
You can download the latest built version from [releases page](https://github.com/HandyGram/app/releases)

## Building
* Install Git
* Install [Android Studio](https://developer.android.com/studio)
  * Install Android SDK
* Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
* Download HandyGram
  ```sh
  git clone https://github.com/HandyGram/HandyGram.git
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

## Contribution

Feel free to leave pull requests and comments on commits. This is my
second big Flutter project, so I may use wrong architecture, wrong tools
and etc. This is the biggest help for me.

## Credits

* [me](https://github.com/tdrkDev) for HandyGram
* All TDLib developers for TDLib
* [i-Naji](https://github.com/i-Naji) for [Dart TDLib wrapper](https://github.com/i-Naji/tdlib)
* All used plugins' developers

