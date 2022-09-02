import 'package:flutter/material.dart';
import 'package:movies_app/pages/home_page.dart';
import 'package:movies_app/pages/second_page.dart';
import 'package:movies_app/provider/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> MovieProvider(),
      child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : (context) => const HomePage(),
        SecondPage.routeName : (context) => const SecondPage(),
      },
    );
  }
}
