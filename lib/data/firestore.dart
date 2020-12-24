import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future AddUser() {
    _firestore.collection('users').doc('013456678').set({
      'name': 'dexter',
    });
  }

  Future getData(String userId) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .snapshots()
          .listen((event) {
        print(event.data());
      });
    } catch (e) {
      print('something went worn is here $e');
    }
  }
}
