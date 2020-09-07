import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_test/hero_model.dart';
import 'package:provider_test/heroes_controller.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  _buildList() {
    HeroesController heroesController = Provider.of<HeroesController>(context);

    return ListView.builder(
      itemCount: heroesController.heroes.length,
      itemBuilder: (context, index) {
        return _buildListItem(heroesController.heroes[index]);
      },
    );
  }

  _buildListItem(HeroModel hero) {
    HeroesController heroesController = Provider.of<HeroesController>(context);

    return ListTile(
      onTap: () {
        heroesController.handleFavorite(hero);
      },
      title: Text(hero.name),
      trailing: hero.isFavorite
          ? Icon(Icons.star, color: Colors.yellow)
          : Icon(Icons.star_border),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer<HeroesController>(
          builder: (context, heroesController, widget) {
            return Center(
              child: Text(
                "${heroesController.heroes.where((i) => i.isFavorite).length}",
                style: TextStyle(fontSize: 18),
              ),
            );
          },
        ),
        title: Text("Provider"),
      ),
      body: Consumer<HeroesController>(
        builder: (context, heroesController, widget) {
          return _buildList();
        },
      ),
    );
  }
}
