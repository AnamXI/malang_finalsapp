import 'package:cloud_firestore/cloud_firestore.dart';

//Creating Boss class
class Boss {

  Boss({
    required this.id, //ID in the database
    required this.name, //Name of the boss (e.g "Radahn", "Gwyn")
    required this.title, //Title of the boss (e.g "General", "Lord")
    required this.img, //jpg of the boss
    required this.area, //Area the boss is found it
    required this.desc, //Brief general description of the boss lore, fight, and appearance
  });

  final String id;
  final String name;
  final String title;
  final String img;
  final String area;
  final String desc;
  bool _isFave = false;

  //Fetching favorite value
  bool get isFave => _isFave;

  //If boss if favorite, unfavorite it when function is run, and vice versa
  void toggleIsFav() {
    _isFave = !_isFave;
  }


  //Boss data model for FireStore
  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'title': title,
      'img': img,
      'area': area,
      'desc': desc,
      'isFave': _isFave,
    };
  }

  //Converting/Mapping Firestore boss data into Data usable by app
  factory Boss.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options
      ) {
    final data = snapshot.data()!;

    Boss boss = Boss(
      name: data['name'],
      title: data['title'],
      img: data['img'],
      area: data['area'],
      desc: data['desc'],
      id: snapshot.id
    );
    if (data['isFave'] == true){
      boss.toggleIsFav();
    }
    return boss;
  }
}
