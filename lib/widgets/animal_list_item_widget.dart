import 'package:flutter/material.dart';

class AnimalListItemWidget extends StatelessWidget {
  const AnimalListItemWidget(
      {Key? key,
      required this.name,
      required this.habitat,
      required this.diet,
      required this.imageUrl})
      : super(key: key);
  final String name;
  final String habitat;
  final String diet;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    //name habitat diet image
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *.3,
                width: MediaQuery.of(context).size.width * .9,
                child: Image(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                name,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Habitat: $habitat"),
              Text("Diet: $diet"),
            ],
          ),
        ),
      ),
    );
  }
}
