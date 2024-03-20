import 'package:flutter/widgets.dart';
import 'package:malang_finalsapp/boss.dart';
import 'package:malang_finalsapp/bossinfo.dart';
import 'package:malang_finalsapp/bosstore.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:malang_finalsapp/userprof.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

//This class builds and formats the BOSS Cards in the DS1/DS2/DS3 Screens
//FOR BOSSES
class ChCard extends StatefulWidget {
  const ChCard(this.boss, {super.key});

  final Boss boss;

  @override
  State<ChCard> createState() => _ChCardState();
}

class _ChCardState extends State<ChCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
            color: Colors.black54, spreadRadius: 1, offset: Offset(10, 10)),
      ]),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/${widget.boss.img}',
                height: 180, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 8),
            SText(' ${widget.boss.title}'),
            Expanded(child: SingleChildScrollView(child: STitle(widget.boss.name))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                //FAVORITES BUTTON
                IconButton(
                  onPressed: () {

                    //WHEN CLICKED, IT CALLS THE ISFAVE FUNCTION FROM BOSS.DART
                    widget.boss.toggleIsFav();

                    //AFTERWARDS, IT SAVES CHANGES TO FIRESTORE DATABASE
                    Provider.of<BossStore>(context, listen: false)
                    .saveFave(widget.boss);

                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    CupertinoIcons.heart_fill,
                    color: widget.boss.isFave ? Colors.red[900] : Colors.white,
                  ),
                ),


                //VIEW BUTTON, WHEN CLICKED IT OPENS THE RESPECTIVE INFO PAGE OF THE BOSS CARD
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => Bossinfo(sboss: widget.boss),
                          ));
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: const Icon(
                      CupertinoIcons.book_fill,
                      color: Colors.white,
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}




//This class builds and formats the PROFILE Cards in the PLAYERS Screen
//FOR PROFILES
class UserCard extends StatelessWidget {
  const UserCard(this.user, {super.key});

  final Userprof user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
            color: Colors.black54, spreadRadius: 1, offset: Offset(10, 10)),
      ]),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/${user.img}',
                height: 180, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 8),
            SText(' ${user.title}'),
            Expanded(
              child: STitle(user.name),
            ),
          ]),
        ),
      ),
    );
  }
}
