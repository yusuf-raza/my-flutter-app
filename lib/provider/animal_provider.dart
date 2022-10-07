import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/AnimalModel.dart';
import 'package:http/http.dart' as http;

class AnimalProvider with ChangeNotifier {
  List<AnimalModel> _animalList = [];

  Future<List<AnimalModel>> fetchAnimals() async {
    try {
      var response = await http.get(
          Uri.parse("https://zoo-animal-api.herokuapp.com/animals/rand/10"));

      var data;

      final List<AnimalModel> fetchedAnimals = [];

      if (response.statusCode == 200) {
        data = jsonDecode(response.body);

        for (Map i in data) {
          fetchedAnimals.add(AnimalModel.fromJson(i));
        }
        _animalList = fetchedAnimals;
        notifyListeners();

        return _animalList;
      } else {
        return _animalList;
      }
    } catch (e) {
      rethrow;
    }
  }

  get animalListLength => _animalList.length;
}
