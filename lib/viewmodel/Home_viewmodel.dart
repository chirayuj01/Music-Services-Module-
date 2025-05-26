import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/music_service.dart';

class HomeViewModel extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<MusicService> _services = [];
  bool _loading = true;

  List<MusicService> get services => _services;
  bool get isLoading => _loading;

  HomeViewModel() {
    fetchServices();
  }
  Future<void> fetchServices() async {
    try {
      final snapshot = await _firestore.collection('services').get();
      _services = snapshot.docs.map((doc) => MusicService.fromJson(doc.data())).toList();
    } catch (e) {
      print('Error: $e');
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}
