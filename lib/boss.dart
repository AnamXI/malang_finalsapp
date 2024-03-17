
class Boss {
  final String id;
  final String name;
  final String title;
  final String img;


  Boss({
    required this.id,
    required this.name,
    required this.title,
    required this.img
  });


  bool _isFave = false;

  bool get isFave => _isFave;

  void toggleIsFav() {
    _isFave = !_isFave;
  }
}

final List<Boss> bosses = [

  //Dark Souls I Bosses
  Boss(id: '1',name: 'Asylum Demon',title: 'Warden',img: 'asylumd.jpg'),
  Boss(id: '2',name: 'Taurus Demon',title: 'Chaos Bull',img: 'taurusd.jpg'),
  Boss(id: '3',name: 'Capra Demon',title: 'Chaos Goat',img: 'caprad.jpg'),
  Boss(id: '4',name: 'Gaping Dragon',title: 'Blighted Abomination',img: 'gapingdr.jpg'),
];

final List<Boss> ds1bosses = [

  //Dark Souls I Bosses
  Boss(id: '5',name: 'Quelaag',title: 'Chaos Witch',img: 'quelaag.jpg'),
  Boss(id: '6',name: 'Iron Golem',title: 'Fortress Guardian',img: 'irongolem.jpg'),
  Boss(id: '7',name: 'Ornstein & Smough',title: 'Royal Knights',img: 'oands.png'),
  Boss(id: '8',name: 'Seath',title: 'Scaleless Traitor',img: 'seathe.jpg'),
  Boss(id: '9',name: 'Nito',title: 'The Gravelord',img: 'gravelord.jpg'),
  Boss(id: '9',name: 'Four Kings',title: 'Kings of Londor',img: 'fourk.jpg'),
];