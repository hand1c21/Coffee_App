import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return android;
  }

  static const FirebaseOptions android = FirebaseOptions(
  apiKey: 'AIzaSyAF9j5tb37KvD8G8jo5WkizrYrhikWrqYc',
  appId: '1:994183186149:android:17c1e3d4eb9cc010b1f60c',
  projectId: 'coffe-app-very-new',
  messagingSenderId: '994183186149',
  storageBucket: 'new-coffee-b0831.appspot.com',
  );
}