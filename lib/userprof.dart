import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:malang_finalsapp/stats.dart';

class Userprof with Stats {

  Userprof({
    required this.id, required this.name, required this.password, required this.title, required this.img
  });

  final String id;
  final String name;
  final String password;
  final String title;
  final String img;
  bool _isFave = false;

  bool get isFave => _isFave;

  void toggleIsFav() {
    _isFave = !_isFave;
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name' :  name,
      'password' : password,
      'title' : title,
      'img' : img,
      'isFave' : _isFave,
    };
  }
  factory Userprof.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options
      ) {
    final data = snapshot.data()!;

    Userprof user = Userprof(
        name: data['name'],
        title: data['title'],
        password: data['password'],
        img: data['img'],
        id: snapshot.id
    );
    if (data['isFave'] == true){
      user.toggleIsFav();
    }
    return user;
  }

//Dummy Data
  List<Userprof> users = [
    Userprof(id: '1',
        name: 'AsaWako',
        password: 'theknave27',
        title: 'The Knave',
        img: 'fourk.jpg'),
    Userprof(id: '2',
        name: 'Butawzki',
        password: 'ailurophobia',
        title: 'Roblox Enjoyer',
        img: 'gapingdr.jpg'),
    Userprof(id: '3',
        name: 'JudgementKazzy',
        password: 'majimalove10',
        title: 'John Yakuzer',
        img: 'hydra.jpg'),
    Userprof(id: '4',
        name: 'Todoroque',
        password: 'dolomiteFTW',
        title: 'Dololover',
        img: 'asylumd.jpg'),
  ];
}
