import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruccab/provider/app_provider.dart';
import 'package:ruccab/screens/confirm_ride_screen.dart';
import 'package:ruccab/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPrefenrece;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefenrece = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        //hon bt3rf w btzid ad ma bdk provider w kl ma tzid class provider lzm tzido hon ta ymshi 7al ysht8l
        ChangeNotifierProvider(create: (final context) => AppProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
