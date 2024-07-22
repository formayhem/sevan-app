import 'package:flutter/material.dart';


import 'mchezo.dart'; // Import your data model classes

class MchezoProvider extends ChangeNotifier {
  final List<Mchezo> _roscas = [
    Mchezo(
      id: '1',
      name: 'Meza na Viti',
      participants: 10,
      contributions: 20000,
     days: 60,
      imageUrl: 'https://images.unsplash.com/photo-1522683280249-025c6e03d311?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80.jpg',
    ),
    Mchezo(
      id: '2',
      name: 'Kiwanja',
      participants: 9,
      contributions: 30000,
     days: 50,
      imageUrl: 'https://images.unsplash.com/photo-1500382017468-9049fed747ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80.jpg',
    ),
    Mchezo(
      id: '3',
      name: 'Pikipiki',
      participants: 8,
      contributions: 12000,
    days: 25,
      imageUrl: 'https://images.unsplash.com/photo-1614165936126-2ed18e471b3b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80.jpg',
    ),
    Mchezo(
      id: '4',
      name: 'vyombo',
      participants: 11,
      contributions: 10000,
     days: 40,
      imageUrl: 'https://images.unsplash.com/photo-1523039031846-6b3f39302cb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1508&q=80.jpg',
    ),
    Mchezo(
      id: '5',
      name: 'Michango',
      participants: 13,
      contributions: 14000,
     days:  30,
      imageUrl: 'https://plus.unsplash.com/premium_photo-1683134047656-27f9d72f3f87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80.jpg',
    ),
  ]; // List to hold mchezo instances

  final List<Mchezo> _addedGames = [];


  List<Mchezo> get roscas => [..._roscas];

    List<Mchezo> get addedGames => [..._addedGames];

Mchezo findById(String id) {
    return _roscas.firstWhere(
      (prod) => prod.id == id,
    );
  }


  void addRosca(Mchezo mchezo) {
    _addedGames.add(mchezo);
    notifyListeners();
  }
}

