import 'package:malang_finalsapp/theme.dart';
import 'package:malang_finalsapp/userprof.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malang_finalsapp/userstore.dart';
import 'package:provider/provider.dart';
import 'chcard.dart';
import 'home.dart';
import 'dsone.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  @override
  void initState() {
    Provider.of<UserStore>(context, listen: false)
    .fetchUsersOnce();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PLAYERS', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 12, fontFamily: 'Optimus',),),
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
              child: Consumer<UserStore>(
                builder: (context, value, child) {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 0,
                      mainAxisSpacing: 50, mainAxisExtent: 320,
                    ),

                    itemCount: value.users.length,
                    itemBuilder: (_, index) {
                      return UserCard(value.users[index]);
                    },
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
