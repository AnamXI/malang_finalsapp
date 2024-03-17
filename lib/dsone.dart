import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chcard.dart';
import 'home.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';
import 'boss.dart';

class DSone extends StatefulWidget {
  const DSone({super.key});

  @override
  State<DSone> createState() => _DSoneState();
}

class _DSoneState extends State<DSone> {

  List titles = ['First Boss', 'Bull Demon','Chaos Goat','','Blighted','Chaos Witch','Fortress Guardian','Dynamic Duo','Fallen Knight','Lords Blade','Hawkeye','The Lord of Cinder','Dutertard','AAAA','Gago'];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DARK SOULS I', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 4, fontFamily: 'Optimus',),),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 0,
                  mainAxisSpacing: 50, mainAxisExtent: 320,
                ),

                itemCount: ds1bosses.length,
                itemBuilder: (_, index) {
                  return ChCard(ds1bosses[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// ListView.builder(
// itemCount: bosses.length,
// itemBuilder: (_, index) {
// return Container(
// color: Colors.grey,
// padding: const EdgeInsets.all(20),
// margin: const EdgeInsets.symmetric(vertical: 40),
// child: Text(bosses[index]),
// );
// },
// ),

// Container(
// padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
// margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
// decoration: BoxDecoration(
// color: Colors.black,
// boxShadow: [BoxShadow(color: Colors.black54, spreadRadius: 1, offset: Offset(8,8)),
// ]),
// child: Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Image.asset('assets/images/artorias.jpg', width: 50,),
// Text(bosses[index]),
//
// ],
// ),
// ),
// )