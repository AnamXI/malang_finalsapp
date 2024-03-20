import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'boss.dart';

//This class organizes, formats, and fetches the necessary data for the "Boss Info" page that
//appears when you click the "Book" (view) button on a boss card.

class Bossinfo extends StatelessWidget {
  const Bossinfo({
    super.key,
    required this.sboss
  });

  final Boss sboss;

  //Appbar will Display boss name
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text(sboss.name, style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 12, fontFamily: 'Optimus',),),
        centerTitle: true,
      ),


      //Body column will display in order: BOSS IMAGE, Boss Name, Boss Title, Boss Area, Description, Favorites Button
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
                          SizedBox(
                            height: 400,
                            child: Container(
                              color: Colors.green,
                              child: Image.asset('assets/images/${sboss.img}', fit: BoxFit.cover, width: double.infinity,),
                            ),
                          ),
                      const SizedBox(height: 20),

                      STitle(sboss.name),
                      SHead(sboss.title),
                      SText(sboss.area),
                      const SizedBox(height: 20),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),
                          child: SText(sboss.desc),),

                      IconButton(onPressed: () {},
                        padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                        icon: const Icon(CupertinoIcons.heart, color: Colors.white,),),
                    ],),
          ),
        ),
      ),
    );
  }
}
