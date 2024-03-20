import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:malang_finalsapp/userprof.dart';
import 'boss.dart';

class FireStoreService {

  //FIRESTORE REF FOR PROFILES
  static final refp = FirebaseFirestore.instance
      .collection('profiles')
      .withConverter(fromFirestore: Userprof.fromFirestore, toFirestore: (Userprof c, _) => c.toFirestore());

  //FIRESTORE REF FOR DARK SOULS 1 BOSSES
  static final refb = FirebaseFirestore.instance
      .collection('bosses')
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss b, _) => b.toFirestore());

  //FIRESTORE REF FOR DARK SOULS 2 BOSSES
  static final refb2 = FirebaseFirestore.instance
      .collection('bosses2')
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss b2, _) => b2.toFirestore());

  //FIRESTORE REF FOR DARK SOULS 3 BOSSES
  static final refb3 = FirebaseFirestore.instance
      .collection('bosses3')
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss b3, _) => b3.toFirestore());

  
  //FOR FAVORITES======================================
  
  static final refF = FirebaseFirestore.instance
      .collection('bosses').where('isFave', isEqualTo: true)
      .withConverter(fromFirestore: Boss.fromFirestore, toFirestore: (Boss bF, _) => bF.toFirestore());


  //FOR FAVORITES======================================


  //Add new user
  static Future<void> addUser(Userprof user) async {
    await refp.doc(user.id).set(user);
  }

  //FETCH USERPROFILES DATA FROM FIRESTORE
  static Future<QuerySnapshot<Userprof>> getUsersOnce(){
    return refp.get();
  }

  //FETCH DARK SOULS 1 BOSS DATA FROM FIRESTORE
  static Future<QuerySnapshot<Boss>> getBossesOnce(){
    return refb.get();
  }

  //FETCH DARK SOULS 2 BOSS DATA FROM FIRESTORE
  static Future<QuerySnapshot<Boss>> getBosses2Once(){
    return refb2.get();
  }

  //FETCH DARK SOULS 3 BOSS DATA FROM FIRESTORE
  static Future<QuerySnapshot<Boss>> getBosses3Once(){
    return refb3.get();
  }

  //FAVORITES

  static Future<QuerySnapshot<Boss>> getBossesFOnce(){
    return refF.get();
  }

  //FAVE UPDATE
  static Future<void> updateFave(Boss boss) async {
    await refb.doc(boss.id).update({
      'isFave': boss.isFave,
    });

  }
}