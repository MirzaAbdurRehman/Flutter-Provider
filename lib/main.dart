import 'package:flutter/material.dart';
import 'package:practice_provider1/provider/count_provider.dart';
import 'package:practice_provider1/provider/favourite_provider.dart';
import 'package:practice_provider1/provider/multiple_screen_provider.dart';
import 'package:practice_provider1/screens/count_screen.dart';
import 'package:practice_provider1/screens/multiple_screen.dart';
import 'package:practice_provider1/screens/myFavourite/favourite_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(  // Multi Class Provider
        providers: [
        ChangeNotifierProvider(  // Globally Context
        create: (_) => Count_Provider(),),

          ChangeNotifierProvider(  // Globally Context
            create: (_) => Multiple_screen_provider(),),

          ChangeNotifierProvider(  // Globally Context
            create: (_) => FavouriteProvider(),),


    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavouriteScreen(),
    ),
    );
  }
}

