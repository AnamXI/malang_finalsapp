import 'package:malang_finalsapp/boss.dart';
import 'package:malang_finalsapp/bossinfo.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:malang_finalsapp/userprof.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChCard extends StatelessWidget {
  const ChCard(this.boss, {super.key});

  final Boss boss;


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
        color: Colors.black,
        boxShadow: [BoxShadow(color: Colors.black54, spreadRadius: 1, offset: Offset(10,10)),
        ]),
        child:  Card(
          child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/${boss.img}', height: 180, width: double.infinity, fit: BoxFit.cover),
              const SizedBox(height: 8),
              SText(' ${boss.title}'),
              Expanded(child: STitle(boss.name),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  IconButton(onPressed: () {},
                      padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                      icon: const Icon(CupertinoIcons.heart, color: Colors.white,),),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) =>  Bossinfo(sboss: boss),));
                  },
                      padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                      icon: const Icon(CupertinoIcons.book_fill, color: Colors.white,)),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}

//FOR PROFILES
class UserCard extends StatelessWidget {
  const UserCard(this.user, {super.key});

  final Userprof user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
          color: Colors.black,
          boxShadow: [BoxShadow(color: Colors.black54, spreadRadius: 1, offset: Offset(10,10)),
          ]),
      child:  Card(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/${user.img}', height: 180, width: double.infinity, fit: BoxFit.cover),
                const SizedBox(height: 8),
                SText(' ${user.title}'),
                Expanded(child: STitle(user.name),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {},
                      padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                      icon: const Icon(CupertinoIcons.heart, color: Colors.white,),),
                    IconButton(onPressed: () {},
                        padding: EdgeInsets.zero, constraints: const BoxConstraints(),
                        icon: const Icon(CupertinoIcons.arrow_2_circlepath, color: Colors.white,)),
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}
