import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vk_shopping/pages/cartSection.dart';
import 'package:vk_shopping/pages/coolDrinkSection.dart';
import 'package:vk_shopping/pages/cotactCard.dart';
import 'package:vk_shopping/pages/curryPowderSection.dart';
import 'package:vk_shopping/pages/finalPage.dart';
import 'package:vk_shopping/pages/fruitSection.dart';
import 'package:vk_shopping/pages/homePage.dart';
import 'package:vk_shopping/pages/logInPage.dart';
import 'package:vk_shopping/pages/mainItomPage.dart';
import 'package:vk_shopping/pages/meatSection.dart';
import 'package:vk_shopping/pages/nutsSection.dart';
import 'package:vk_shopping/pages/riseSection.dart';
import 'package:vk_shopping/pages/signupPage.dart';
import 'package:vk_shopping/pages/updatePage.dart';
import 'package:vk_shopping/pages/vegitableSection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vk_shopping/pages/wrapperPage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/fruites') {
          return MaterialPageRoute(builder: (context) => const FruitSection());
        }
        // Handle other routes here
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'logIn': (context) => const LogInPage(),
        '/signUp': (context) => const SignInPage(),
        '/homePage': (context) => const Homepage(),
        '/mainItemPage': (context) => const MainItemPage(),
        '/coolDrink': (context) => const CoolDrinkSection(),
        '/vegitable': (context) => const VegitableSection(),
        '/meats': (context) => const MeatSection(),
        '/curryPowder': (context) => const CurryPowderSection(),
        '/rise': (context) => RiseSection(),
        '/nuts': (context) => const NutsSection(),
        '/cart': (context) => const CartSection(),
        '/final': (context) => const FinalPage(),
        '/update': (context) => const UpdatePage(),
        '/contact': (context) => const ContactCard(),
      },
      initialRoute: "logIn",
      title: "VK STORE",
      home: const WrapperPage(),
    ),
  );
}
