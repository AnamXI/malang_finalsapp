import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {

  static final refp = FirebaseFirestore.instance
      .collection('profiles');

  static final refb = FirebaseFirestore.instance
      .collection('bosses');

}