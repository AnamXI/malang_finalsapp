import 'package:flutter/cupertino.dart';
import 'package:malang_finalsapp/bosstore.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:malang_finalsapp/home.dart';
import 'package:malang_finalsapp/userstore.dart';
import 'package:provider/provider.dart';

//Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//MAIN FUNCTION AND INITIALIZATIONS
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //SETS THE DATA PROVIDERS USED
  runApp(MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => BossStore()),
        ChangeNotifierProvider(create: (context) => UserStore()),
      ],

    //RUNS THE APP PROPER
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: dsTheme,
        home: const Home()
    ),
  ));
}