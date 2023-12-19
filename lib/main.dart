import 'package:flutter/material.dart';
import 'package:vk_shopping/pages/cartSection.dart';
import 'package:vk_shopping/pages/commonPage.dart';
import 'package:vk_shopping/pages/coolDrinkSection.dart';
import 'package:vk_shopping/pages/curryPowderSection.dart';
import 'package:vk_shopping/pages/fruitSection.dart';
import 'package:vk_shopping/pages/homePage.dart';
import 'package:vk_shopping/pages/logInPage.dart';
import 'package:vk_shopping/pages/mainItomPage.dart';
import 'package:vk_shopping/pages/meatSection.dart';
import 'package:vk_shopping/pages/nutsSection.dart';
import 'package:vk_shopping/pages/riseSection.dart';
import 'package:vk_shopping/pages/signupPage.dart';
import 'package:vk_shopping/pages/vegitableSection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/fruites') {
          return MaterialPageRoute(builder: (context) => FruitSection());
        }
        // Handle other routes here
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'logIn': (context) => LogInPage(),
        '/signUp': (context) => SignInPage(),
        '/homePage': (context) => Homepage(),
        '/mainItemPage': (context) => MainItemPage(),
        '/coolDrink': (context) => CoolDrinkSection(),
        '/vegitable': (context) => VegitableSection(),
        '/meats': (context) => MeatSection(),
        '/curryPowder': (context) => CurryPowderSection(),
        '/rise': (context) => RiseSection(),
        '/nuts': (context) => NutsSection(),
        '/cart': (context) => CartSection(),
      },
      initialRoute: "logIn",
      title: "VK STORE",
      home: CommonPage(),
    ),
  );
}
