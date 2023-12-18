import 'package:flutter/material.dart';
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

void main() {
  runApp(
    MaterialApp(
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
      },
      initialRoute: "logIn",
      title: "VK STORE",
      home: CommonPage(),
    ),
  );
}
