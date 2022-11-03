# A mobile App develop with Flutter and inAppWebview that encapsulate a website

## Uma App de encapsulamento de um Website para Android e iOS com Flutter

# myapp
## Getting Started

Instalar:

 - Android Studio IDE
 - Visual Studio C++
 - Visual Studio Code (para usar menos recursos da maquina)
      - Instalar pluguins: Dart, Flutter, Flutter Widgets Snip 
 - Android SDK Location

# Incluir no Path de Variaveis de Ambiente do Utilizador no Windows, o SDK folder: 

C:\Users\andre.velloso\src\flutter\bin
C:\Users\andre.velloso\AppData\Local\Android\Sdk

# Para validar a instalação

flutter doctor  

# para criar projetos no terminal

  1. Crie o projeto Flutter

  flutter create myapp

  ## Info opcional: Para criar projetos no IDE do Android Studio

     Nas opções de menu: File > New > New flutter project

## entrar na pasta do projeto:

cd myapp

## Info opcional: Para exibir os emuladores disponiveis

flutter devices

## Info opcional: Para executar um emulador 

flutter run -d deviceID 

# Configurar Android Studio para flutter

2. Instale os packages

flutter pub add flutter_inappwebview
flutter pub add url_launcher

### Estes comandos irá adicionar no pubspec.yaml (Linha 33 ou proximo)

   dependencies:
     flutter:
       sdk: flutter
     # The following adds the Cupertino Icons font to your application.
     # Use with the CupertinoIcons class for iOS style icons.
     cupertino_icons: ^1.0.2
     flutter_inappwebview: ^5.4.3+7


3. you need to update the minSdkVersion of your android/app/build.gradle file to at least 17.

4. add <uses-permission android:name="android.permission.INTERNET"/> in the android/app/src/main/AndroidManifest.xml file, antes da secção <application>

5. If you want to use the ChromeSafariBrowser class on Android 11+ you need to specify your app querying for android.support.customtabs.action.CustomTabsService in your AndroidManifest.xml (you can read more about it here: https://developers.google.com/web/android/custom-tabs/best-practices#applications_targeting_android_11_api_level_30_or_above).


6. To use InAppWebView class on iOS, Adicione no info.plist no path: $APP_Folder\ios\Runner\Info.plist    
 
	<key>io.flutter.embedded_views_preview</key>
	<Boolean>YES</Boolean>

  # Info: https://engineering.mercari.com/en/blog/entry/20210907-ios-info-plist-for-large-scale-apps/


7. Copie e substitua os ficheiros na pasta \myapp\lib

      main.dart
      home_page.dart
      in_app_browser_page.dart
      in_app_webview_page.dart

