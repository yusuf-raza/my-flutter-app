import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/AnimalModel.dart';
import 'package:my_flutter_app/provider/animal_provider.dart';
import 'package:my_flutter_app/widgets/animal_list_item_widget.dart';
import 'package:provider/provider.dart';

class AnimalListWidget extends StatelessWidget {
  const AnimalListWidget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final animal = Provider.of<AnimalProvider>(context,listen: false);
    return FutureBuilder(
        future: animal.fetchAnimals(),
        builder: (context, AsyncSnapshot<List<AnimalModel>> snapshot) {
          return (!snapshot.hasData)
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: animal.animalListLength,
                  itemBuilder: (context, index) {
                    return AnimalListItemWidget(
                        name: snapshot.data![index].name.toString(),
                        habitat: snapshot.data![index].habitat.toString(),
                        diet: snapshot.data![index].diet.toString(),
                        imageUrl: snapshot.data![index].imageLink.toString());
                    //return ListTile(title: Text(snapshot.data![index].id.toString()));
                  });
        });
  }
}
