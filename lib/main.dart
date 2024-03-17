import 'package:flutter/cupertino.dart';
import 'package:malang_finalsapp/bosstore.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:malang_finalsapp/home.dart';
import 'package:malang_finalsapp/userstore.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => BossStore()),
        ChangeNotifierProvider(create: (context) => UserStore()),
      ],
    child: MaterialApp(
        theme: dsTheme,
        home: const Home()
    ),
  ));
}