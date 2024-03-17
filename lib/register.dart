import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malang_finalsapp/userprof.dart';
import 'package:malang_finalsapp/userstore.dart';
import 'package:provider/provider.dart';
import 'dsone.dart';
import 'dstwo.dart';
import 'dsthree.dart';
import 'home.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _unameController = TextEditingController();
  final _titleController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {

    _unameController.dispose();
    _titleController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void handleSubmit() {
    if (_unameController.text
        .trim()
        .isEmpty) {
        //Show Error

      showDialog(context: context, builder: (ctx) {
        return AlertDialog(
            backgroundColor: AppColors.primaryColor,
          surfaceTintColor: Colors.transparent,
          title: const SHead('MISSING INPUT'),
          content: const SText('Please input a Username'),
          actions:[
            FilledButton(onPressed: (){
              Navigator.pop(ctx);
            }, child: SHead('Close')),

          ]
        );
      });

      return;
    }
    if (_titleController.text
        .trim()
        .isEmpty) {
      showDialog(context: context, builder: (ctx) {
        return AlertDialog(
          backgroundColor: AppColors.primaryColor,
            surfaceTintColor: Colors.transparent,
            title: const SHead('MISSING INPUT'),
            content: const SText('Please input a Title'),
            actions:[
              FilledButton(onPressed: (){
                Navigator.pop(ctx);
              }, child: SHead('Close')),

            ]
        );
      });
      //Show Error
      return;
    }
    if (_passwordController.text
        .trim()
        .isEmpty) {
      showDialog(context: context, builder: (ctx) {
        return AlertDialog(
            backgroundColor: AppColors.primaryColor,
            surfaceTintColor: Colors.transparent,
            title: const SHead('MISSING INPUT'),
            content: const SText('Please input a Password'),
            actions:[
              FilledButton(onPressed: (){
                Navigator.pop(ctx);
              }, child: SHead('Close')),

            ]
        );
      });
      //Show Error
      return;
    }

    Provider.of<UserStore>(context, listen: false).addUser(
        Userprof(id: uuid.v4(), name: _unameController.text.trim(),
        password: _passwordController.text,
        title: _titleController.text,
        img: 'fourk.jpg'));

    Navigator.push(context, MaterialPageRoute(
      builder: (ctx) => const PlayerScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTER', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 12, fontFamily: 'Optimus',),),
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Icon(Icons.fireplace, color: Colors.white),
                const SizedBox(height: 50,),
                const STitle('REGISTER'),
                const SizedBox(height: 30,),

                //TEXTFIELDS
                TextField(
                  controller: _unameController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'CGothic',
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    label: SText('Username'),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _titleController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'CGothic',
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.title),
                    label: SText('Title'),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _passwordController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'CGothic',
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password_sharp),
                    label: SText('Password'),
                  ),
                ),
                const SizedBox(height: 30,),
                FilledButton(onPressed: handleSubmit, child: const SHead('Submit')),
              ],
            ),
          ),
        ),
      )
    );
  }
}
