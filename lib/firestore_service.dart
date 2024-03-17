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

  static final refb2 = FirebaseFirestore.instance
      .collection('bosses2')
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss b2, _) => b2.toFirestore());

  static final refb3 = FirebaseFirestore.instance
      .collection('bosses3')
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss b3, _) => b3.toFirestore());



  //add new user

  static Future<void> addUser(Userprof user) async {
    await refp.doc(user.id).set(user);
  }

  static Future<QuerySnapshot<Userprof>> getUsersOnce(){
    return refp.get();
  }

  static Future<QuerySnapshot<Boss>> getBossesOnce(){
    return refb.get();
  }

  static Future<QuerySnapshot<Boss>> getBosses2Once(){
    return refb2.get();
  }

  static Future<QuerySnapshot<Boss>> getBosses3Once(){
    return refb3.get();
  }

  static Future<void> deleteBoss(Boss boss) async {
    await refp.doc(boss.id).delete();
  }
// fetch
//update
//delete

}