import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:malang_finalsapp/userprof.dart';

import 'boss.dart';

class FireStoreService {

  static final refp = FirebaseFirestore.instance
      .collection('profiles')
      .withConverter(fromFirestore: Userprof.fromFirestore, toFirestore: (Userprof c, _) => c.toFirestore());

  static final refb = FirebaseFirestore.instance
      .collection('bosses')
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss b, _) => b.toFirestore());

  //add new user

  static Future<void> addUser(Userprof user) async {
    await refp.doc(user.id).set(user);
  }

  static Future<QuerySnapshot<Userprof>>
// fetch
//update
//delete

}