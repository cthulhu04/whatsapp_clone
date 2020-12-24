import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServers {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  userMessageList(String userId) {
    _firestore.collection('users').doc(userId);
  }
}
