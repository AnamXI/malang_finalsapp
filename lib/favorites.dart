import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'boss.dart';
import 'bosstore.dart';
import 'chcard.dart';
import 'home.dart';
import 'dsone.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'players.dart';


//FAVORITES PAGE

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    Provider.of<BossStore>(context, listen: false)
        .fetchBossesFOnce();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FAVORITES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 12,
            fontFamily: 'Optimus',
          ),
        ),
        centerTitle: true,
      ),


      //======================SIDE MENU===========================
      drawer: Drawer(
        backgroundColor: AppColors.secondaryColor,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        child: ListView(
          children: [
            ListTile(
              title: const SHead('Home'),
              leading: const Icon(
                CupertinoIcons.book_fill,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const Home(),
                    ));
              },
            ),
            ListTile(
              title: const SHead('Favorites'),
              leading: const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const FavoritesScreen(),
                    ));
              },
            ),
            ListTile(
              title: const SHead('Players'),
              leading: const Icon(
                CupertinoIcons.group_solid,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const PlayerScreen(),
                    ));
              },
            ),
            ListTile(
              title: const SHead('Dark Souls I'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const DSone(),
                    ));
              },
            ),
            ListTile(
              title: const SHead('Dark Souls II'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const DStwo(),
                    ));
              },
            ),
            ListTile(
              title: const SHead('Dark Souls III'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const DSthree(),
                    ));
              },
            ),
          ],
        ),
      ),
      //======================SIDE MENU===========================


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Consumer<BossStore>(builder: (context, value, child) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 50,
                    mainAxisExtent: 320,
                  ),
                  itemCount: value.fbosses.length,
                  itemBuilder: (_, index) {
                    return ChCard(value.fbosses[index]);
                  },
                );
              }),
            ),
          ),

        ],
      ),
    );
  }
}
