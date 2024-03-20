import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:malang_finalsapp/stats.dart';

//CREATING A USERPROFILE CLASS
class Userprof with Stats {

  Userprof({
    required this.id, required this.name, required this.password, required this.title, required this.img
  });

  final String id; //ID in database
  final String name; //Username
  final String password; //Password
  final String title; //Profile Title (Creative custom titles players want to go by)
  final String img; //Player Profile Picture
  bool _isFave = false; //FOR UNIMPLEMENTED Favorite Players Page

  bool get isFave => _isFave; //FOR UNIMPLEMENTED Favorite Players Page

  void toggleIsFav() { //FOR UNIMPLEMENTED Favorite Players Page
    _isFave = !_isFave;
  }

  //USERPROFILE DATA MODEL FOR FIRESTORE
  Map<String, dynamic> toFirestore() {
    return {
      'name' :  name,
      'password' : password,
      'title' : title,
      'img' : img,
      'isFave' : _isFave,
    };
  }

  //Converting/Mapping Firestore boss data into Data usable by app
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
}
