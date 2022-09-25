import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/screens/signup_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAeE-6OcO9jvJgym4roP9PkQtRgzVCJMm8",
        appId: "1:359532311838:web:f365e8705dbe18858e050f",
        messagingSenderId: "359532311838",
        projectId: "intagram-flutter",
        storageBucket: "intagram-flutter.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      title: 'Instagram Clone',
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      routes: {
        // "/": (context) => const LoginScreen(),
        "/home": (context) => SignupScreen(),
      },
      home: Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            if (Navigator.canPop(context)) {
              //Navigator.pop(context);
              Navigator.of(context).pop();
            } else {
              SystemNavigator.pop();
            }
            return true;
          },
          child: LoginScreen(),
        ),
      ),
    );
  }
}
