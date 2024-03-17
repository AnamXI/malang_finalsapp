
class Boss {
  final String id;
  final String name;
  final String title;
  final String img;
  final String area;


  Boss({
    required this.id,
    required this.name,
    required this.title,
    required this.img,
    required this.area,
  });


  bool _isFave = false;

  bool get isFave => _isFave;

  void toggleIsFav() {
    _isFave = !_isFave;
  }
}

final List<Boss> bosses = [

  //Dark Souls I Bosses
  Boss(id: '1',name: 'Asylum Demon',title: 'Warden',img: 'asylumd.jpg', area: 'Undead Asylum'),
  Boss(id: '2',name: 'Taurus Demon',title: 'Chaos Bull',img: 'taurusd.jpg', area: 'Undead Burg'),
  Boss(id: '3',name: 'Capra Demon',title: 'Chaos Goat',img: 'caprad.jpg', area: 'Lower Undead Burg'),
  Boss(id: '4',name: 'Gaping Dragon',title: 'Blighted Abomination',img: 'gapingdr.jpg', area: 'The Depths'),
];

final List<Boss> ds1bosses = [

  //Dark Souls I Bosses
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