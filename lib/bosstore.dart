import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'boss.dart';
import 'chcard.dart';
import 'firestore_service.dart';
import 'home.dart';
import 'dsone.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';

class BossStore extends ChangeNotifier {

  final List<Boss> _bosses = [];
  final List<Boss> _bosses2 = [];
  final List<Boss> _bosses3 = [];

  get ds1bosses => _bosses;
  get ds2bosses => _bosses2;
  get ds3bosses => _bosses3;

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
}

// Boss(id: '1',name: 'Asylum Demon',title: 'Warden',img: 'asylumd.jpg', area: 'Undead Asylum'),
// Boss(id: '2',name: 'Taurus Demon',title: 'Chaos Bull',img: 'taurusd.jpg', area: 'Undead Burg'),
// Boss(id: '3',name: 'Capra Demon',title: 'Chaos Goat',img: 'caprad.jpg', area: 'Lower Undead Burg'),
// Boss(id: '4',name: 'Gaping Dragon',title: 'Blighted Abomination',img: 'gapingdr.jpg', area: 'The Depths'),
// Boss(id: '5',name: 'Quelaag',title: 'Chaos Witch',img: 'quelaag.jpg', area: 'Blighttown'),
// Boss(id: '6',name: 'Iron Golem',title: 'Fortress Guardian',img: 'irongolem.jpg', area: "Sen's Fortress"),
// Boss(id: '7',name: 'Ornstein & Smough',title: 'Royal Knights',img: 'oands.jpg', area: 'Anor Londo'),
// Boss(id: '8',name: 'Seath',title: 'Scaleless Traitor',img: 'seathe.jpg', area: 'Crystal Caves'),
// Boss(id: '9',name: 'Nito',title: 'The Gravelord',img: 'gravelord.jpg', area: 'Tomb of the Giants'),
// Boss(id: '9',name: 'Four Kings',title: 'Kings of Londor',img: 'fourk.jpg', area: 'New Londo Ruins'),