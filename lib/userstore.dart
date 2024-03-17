import 'package:malang_finalsapp/firestore_service.dart';
import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malang_finalsapp/userprof.dart';
import 'boss.dart';
import 'chcard.dart';
import 'home.dart';
import 'dsone.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';

class UserStore extends ChangeNotifier {

  final List<Userprof> _users = [];

  get users => _users;

  void addUser(Userprof user){
    FireStoreService.addUser(user);

    _users.add(user);
    notifyListeners();
  }

  void fetchUsersOnce() async {
    if (users.length == 0){
      final snapshot = await FireStoreService.getUsersOnce();

      for (var doc in snapshot.docs){
        _users.add(doc.data());
      }
      notifyListeners();
    }
  }
}

// Userprof(id: '1', name: 'AsaWako', password: 'theknave27', title: 'The Knave', img: 'fourk.jpg'),
// Userprof(id: '2', name: 'Butawzki', password: 'ailurophobia', title: 'Roblox Enjoyer', img: 'gapingdr.jpg'),
// Userprof(id: '3', name: 'JudgementKazzy', password: 'majimalove10', title: 'John Yakuzer', img: 'hydra.jpg'),
// Userprof(id: '4', name: 'Todoroque', password: 'dolomiteFTW', title: 'Dololover', img: 'asylumd.jpg'),