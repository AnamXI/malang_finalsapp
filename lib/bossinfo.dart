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
      appBar: AppBar(
        title: Text(sboss.name, style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 12, fontFamily: 'Optimus',),),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.secondaryColor,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),),
        child: ListView(
          children: [
            ListTile(
              title: const SHead('Home'),
              leading: const Icon(CupertinoIcons.book_fill, color: Colors.white,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const Home(),
                ));
              },
            ),
            ListTile(
              title: const SHead('Profile'),
              leading: const Icon(CupertinoIcons.person_circle_fill, color: Colors.white,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const ProfileScreen(),
                ));
              },
            ),
            ListTile(
              title: const SHead('Favorites'),
              leading: const Icon(CupertinoIcons.heart_fill, color: Colors.white,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const FavoritesScreen(),
                ));
              },
            ),
            ListTile(
              title: const SHead('Other Players'),
              leading: const Icon(CupertinoIcons.group_solid, color: Colors.white,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const PlayerScreen(),
                ));
              },
            ),
            ListTile(
              title: const SHead('Dark Souls I'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const DSone(),
                ));
              },
            ),
            ListTile(
              title: const SHead('Dark Souls II'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const DStwo(),
                ));
              },
            ),
            ListTile(
              title: const SHead('Dark Souls III'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const DSthree(),
                ));
              },
            ),

          ],
        ),
      ),
      body: Center(
        child: Container(
          color: AppColors.secondaryColor,
          constraints: const BoxConstraints(maxWidth: 500),
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0,),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  child: Container(
                    child: SizedBox(
                      height: 400,
                      child: Container(
                        color: Colors.green,
                        child: Image.asset('assets/images/artorias.jpg', fit: BoxFit.cover, width: double.infinity,),
                      ),
                    ),
                  ),
                ),


              ],)
            ,
          ),
        ),
      ),


    );
  }
}
