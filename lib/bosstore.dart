import 'package:malang_finalsapp/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'boss.dart';
import 'chcard.dart';
import 'home.dart';
import 'dsone.dart';
import 'dsthree.dart';
import 'favorites.dart';
import 'profile.dart';
import 'players.dart';

class BossStore extends ChangeNotifier {

  final List<Boss> _bosses = [
    Boss(id: '1',name: 'Asylum Demon',title: 'Warden',img: 'asylumd.jpg', area: 'Undead Asylum'),
    Boss(id: '2',name: 'Taurus Demon',title: 'Chaos Bull',img: 'taurusd.jpg', area: 'Undead Burg'),
    Boss(id: '3',name: 'Capra Demon',title: 'Chaos Goat',img: 'caprad.jpg', area: 'Lower Undead Burg'),
    Boss(id: '4',name: 'Gaping Dragon',title: 'Blighted Abomination',img: 'gapingdr.jpg', area: 'The Depths'),
    Boss(id: '5',name: 'Quelaag',title: 'Chaos Witch',img: 'quelaag.jpg', area: 'Blighttown'),
    Boss(id: '6',name: 'Iron Golem',title: 'Fortress Guardian',img: 'irongolem.jpg', area: "Sen's Fortress"),
    Boss(id: '7',name: 'Ornstein & Smough',title: 'Royal Knights',img: 'oands.png', area: 'Anor Londo'),
    Boss(id: '8',name: 'Seath',title: 'Scaleless Traitor',img: 'seathe.jpg', area: 'Crystal Caves'),
    Boss(id: '9',name: 'Nito',title: 'The Gravelord',img: 'gravelord.jpg', area: 'Tomb of the Giants'),
    Boss(id: '9',name: 'Four Kings',title: 'Kings of Londor',img: 'fourk.jpg', area: 'New Londo Ruins'),
  ];

  get ds1bosses => _bosses;
}