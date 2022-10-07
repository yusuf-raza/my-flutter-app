import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/AnimalModel.dart';
//import 'package:my_flutter_app/resources/animal_api_provider.dart';
import 'package:my_flutter_app/services/services.dart';

class AnimalListWidget extends StatelessWidget {
  const AnimalListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Services services = Services();
    return FutureBuilder(
        future: Services().fetchAnimals(),
        builder: (context, AsyncSnapshot<List<AnimalModel>> snapshot){
          return (!snapshot.hasData)?const Center(child: CircularProgressIndicator()):ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index){
            return ListTile(title: Text(snapshot.data![index].id.toString()));
          });
        }
    );
  }
}
