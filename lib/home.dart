import 'package:malang_finalsapp/register.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dsone.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'players.dart';


//HOME PAGE
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const STitle('DS ARCHIVE'),
          centerTitle: true,
        ),


      //======================SIDE MENU===========================
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
                title: const SHead('Favorites'),
                leading: const Icon(CupertinoIcons.heart_fill, color: Colors.white,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (ctx) => const FavoritesScreen(),
                  ));
                },
              ),
              ListTile(
                title: const SHead('Players'),
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
                title: const SHead('REGISTER'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (ctx) => const Register(),
                  ));
                },
              ),
            ],
          ),
        ),
      //======================SIDE MENU===========================


      body: Center(

        //DISPLAYS THE MAIN MENU IMAGE
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
                          child: Image.asset('assets/images/bonfire.jpg', fit: BoxFit.cover, width: double.infinity,),
                        ),
                      ),
                    ),
                  ),
                  Container(
                        decoration: const BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.black54, spreadRadius: 1, offset: Offset(0,20)),
                        ]) ,


                       //DISPLAYS THE NAVIGATOR BUTTONS FOR DS1/DS2/DS3 PAGES
                        child: Column(
                        children: [

                          //DARK SOULS 1 BUTTON
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
                                  child: const Text('DARK SOULS I', style: TextStyle(fontFamily: 'Optimus', fontSize: 25),),
                           )),

                          //DARK SOULS 2 BUTTON
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
                                child: const Text('DARK SOULS II', style: TextStyle(fontFamily: 'Optimus', fontSize: 25),)
                              )),

                          //DARK SOULS 3 BUTTON
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
                                child: const Text('DARK SOULS III', style: TextStyle(fontFamily: 'Optimus', fontSize: 25),)
                              )),
                        ],
                      ),
                    ),

                    //HOTASEII IS MY ARTIST NAME, THIS IS HERE FOR CREDIT AND SHOWCASE PURPOSES
                    //FOR THE FINAL BUILD
                    const SizedBox(height: 150,),
                    const SText('Made by: Hotaseii'),
                ],),
              ),
          ),
        ),
    );
  }
}
