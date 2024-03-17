import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chcard.dart';
import 'dsone.dart';
import 'home.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';
import 'boss.dart';

class Bossinfo extends StatelessWidget {
  const Bossinfo({
    super.key,
    required this.sboss
  });

  final Boss sboss;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text(sboss.name, style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 12, fontFamily: 'Optimus',),),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          color: AppColors.primaryColor,
          constraints: const BoxConstraints(maxWidth: 500),
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0,),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
                    child: Column(
                    children: [
                          Container(
                          child: SizedBox(
                            height: 400,
                            child: Container(
                              color: Colors.green,
                              child: Image.asset('assets/images/${sboss.img}', fit: BoxFit.cover, width: double.infinity,),
                            ),
                          ),
                        ),
                      SizedBox(height: 20),
                      STitle('${sboss.title}'),
                      SText('of ${sboss.area}'),
                      SizedBox(height: 20),
                      SText("A half-woman, half-spider demon located in a lair near the bottom of Blighttown. One of the Witch of Izalith's daughters, transformed into a monster by the Flames of Chaos. Her notable siblings are The Fair Lady and Ceaseless Discharge. She guards the second Bell of Awakening, and the entrance to her sister's domain."),

                      IconButton(onPressed: () {},
                        padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                        icon: const Icon(CupertinoIcons.heart, color: Colors.white,),),
                    ],)
                  ,
                ),
        ),
      ),);

  }
}
