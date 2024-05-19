import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn_basic_project/screens/splashscreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


late Size mq;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]). then((v){
  runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OpenVpn Demo',
      home: SplashScreen(),

      theme: ThemeData(appBarTheme: AppBarTheme(centerTitle: true, elevation: 3)),
      debugShowCheckedModeBanner: false,
    );
  }
}
