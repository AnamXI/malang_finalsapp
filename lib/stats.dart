//UNUSED/WIP DART FOR USE IN THE UNIMPLEMENTED "PROFILES" PAGE
//ESSENTIALLY, EACH PROFILE WILL DISPLAY HOW MANY DS1/DS2/DS3 BOSSES THEY HAVE DEFEATED
//A FEATURE THAT IS YET TO BE MADE
mixin Stats {
  final int _dsone = 0;
  final int _dstwo = 0;
  final int _dsthree = 0;

  int get dsone => _dsone;
  int get dstwo => _dstwo;
  int get dsthree => _dsthree;

  Map<String, int> get killsAsMap => {
    "DS1 Bosses": _dsone,
    "DS2 Bosses": _dstwo,
    "DS3 Bosses": _dsthree,
  };

  List<Map<String, String>> get killsAsFormattedList => [
    {'title' : 'DS1 Bosses', 'value' : _dsone.toString()},
    {'title' : 'DS2 Bosses', 'value' : _dstwo.toString()},
    {'title' : 'DS3 Bosses', 'value' : _dsthree.toString()},
  ];
}


