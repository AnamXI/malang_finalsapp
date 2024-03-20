import 'package:malang_finalsapp/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malang_finalsapp/userprof.dart';

//STORING/FETCHING OF USERPROFILE DATA

class UserStore extends ChangeNotifier {

  //INITIALIZING USERPROFILES LIST
  final List<Userprof> _users = [];

  //FETCHING LIST VALUES/ITEMS
  get users => _users;

  //ADDUSER FUNCTION FOR REGISTERING
  void addUser(Userprof user){
    FireStoreService.addUser(user);

    _users.add(user);
    notifyListeners();
  }

  //FETCH USERPROFILES DATA FROM DB
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
