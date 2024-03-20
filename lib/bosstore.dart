import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'boss.dart';
import 'firestore_service.dart';

//STORING/FETCHING OF BOSS DATA

class BossStore extends ChangeNotifier {

  //Initializing boss lists and preparing categories
  final List<Boss> _bosses = [];
  final List<Boss> _bosses2 = [];
  final List<Boss> _bosses3 = [];

  final List<Boss> _bossesf = [];


  //Fetching the private values for outside use
  get ds1bosses => _bosses;
  get ds2bosses => _bosses2;
  get ds3bosses => _bosses3;

  get fbosses => _bossesf;

  //UPDATE FAVE
  Future<void> saveFave(Boss boss) async {
    await FireStoreService.updateFave(boss);
    return;
  }

  //Fetch Dark Souls 1 Boss Data from DB
  void fetchBossesOnce() async {
    if (ds1bosses.length == 0){
      final snapshot = await FireStoreService.getBossesOnce();
      ds2bosses.length = 0;
      ds3bosses.length = 0;

      for (var doc in snapshot.docs){
        _bosses.add(doc.data());
      }
      notifyListeners();
    }
  }

  //Fetch Dark Souls 2 Boss Data from DB
  void fetchBosses2Once() async {
    if (ds2bosses.length == 0){
      final snapshot = await FireStoreService.getBosses2Once();
      ds1bosses.length = 0;
      ds3bosses.length = 0;

      for (var doc in snapshot.docs){
        _bosses2.add(doc.data());
      }
      notifyListeners();
    }
  }

  //Fetch Dark Souls 3 Boss Data from DB
  void fetchBosses3Once() async {
    if (ds3bosses.length == 0){
      final snapshot = await FireStoreService.getBosses3Once();
      ds2bosses.length = 0;
      ds1bosses.length = 0;

      for (var doc in snapshot.docs){
        _bosses3.add(doc.data());
      }
      notifyListeners();
    }
  }

  //FAVORITES
  void fetchBossesFOnce() async {
    if (fbosses.length == 0){
      final snapshot = await FireStoreService.getBossesFOnce();

      for (var doc in snapshot.docs){
        _bossesf.add(doc.data());
      }
      notifyListeners();
    }
  }


}

