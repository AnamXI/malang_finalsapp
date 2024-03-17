import 'package:malang_finalsapp/register.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dsone.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List bosses = ['DragonSlayer Ornstein', 'Knight Artorias', 'LordsBlade Ciaran', 'Hawkeye Gough', 'Gwyn The Lord Of Cinder', 'Harry Roque', 'Kratos', 'Kamuning Secret Files'];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DARKSOULS', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 12, fontFamily: 'Optimus',),),
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
              ListTile(
                title: const SHead('Tester'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (ctx) => const Register(),
                  ));
                },
              ),
            ],
          ),
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
                  Container(
                        decoration: const BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.black54, spreadRadius: 1, offset: Offset(0,20)),
                        ]) ,
                        child: Column(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: FilledButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (ctx) => const DSone(),
                                ));
                              },
                                style: FilledButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                  ),
                                ),
                                  child: const SHead('DARK SOULS I'),
                           )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: FilledButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (ctx) => const DStwo(),
                                ));
                              },
                                style: FilledButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                  ),
                                ),
                                child: const SHead('DARK SOULS II'),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: FilledButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (ctx) => const DSthree(),
                                ));
                              },
                                style: FilledButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.zero),
                                  ),
                                ),
                                child: const SHead('DARK SOULS III'),
                              )),
                        ],
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