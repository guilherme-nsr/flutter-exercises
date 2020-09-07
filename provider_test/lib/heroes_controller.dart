import 'package:flutter/foundation.dart';
import 'package:provider_test/hero_model.dart';

class HeroesController extends ChangeNotifier {
  List<HeroModel> heroes = [
    HeroModel(name: "Batman"),
    HeroModel(name: "Superman"),
    HeroModel(name: "Wonder Woman"),
    HeroModel(name: "Green Lantern"),
    HeroModel(name: "Flash"),
    HeroModel(name: "Cyborg"),
    HeroModel(name: "Aquaman"),
  ];

  handleFavorite(HeroModel hero) {
    hero.isFavorite = !hero.isFavorite;
    notifyListeners();
  }
}
