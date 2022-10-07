import 'dart:convert';
/// name : "Scarlet Ibis"
/// latin_name : "Eudocimus ruber"
/// animal_type : "Bird"
/// active_time : "Diurnal"
/// length_min : "2.1"
/// length_max : "2.2"
/// weight_min : "1.3"
/// weight_max : "1.4"
/// lifespan : "12"
/// habitat : "Coastal wetlands"
/// diet : "Small crayfish, snails and amphibians"
/// geo_range : "Northern South America"
/// image_link : "https://upload.wikimedia.org/wikipedia/commons/f/f7/Scarlet_Ibis_SMTC.jpg"
/// id : 159

AnimalModel animalModelFromJson(String str) => AnimalModel.fromJson(json.decode(str));
String animalModelToJson(AnimalModel data) => json.encode(data.toJson());
class AnimalModel {
  AnimalModel({
      String? name, 
      String? latinName, 
      String? animalType, 
      String? activeTime, 
      String? lengthMin, 
      String? lengthMax, 
      String? weightMin, 
      String? weightMax, 
      String? lifespan, 
      String? habitat, 
      String? diet, 
      String? geoRange, 
      String? imageLink, 
      num? id,}){
    _name = name;
    _latinName = latinName;
    _animalType = animalType;
    _activeTime = activeTime;
    _lengthMin = lengthMin;
    _lengthMax = lengthMax;
    _weightMin = weightMin;
    _weightMax = weightMax;
    _lifespan = lifespan;
    _habitat = habitat;
    _diet = diet;
    _geoRange = geoRange;
    _imageLink = imageLink;
    _id = id;
}

  AnimalModel.fromJson(dynamic json) {
    _name = json['name'];
    _latinName = json['latin_name'];
    _animalType = json['animal_type'];
    _activeTime = json['active_time'];
    _lengthMin = json['length_min'];
    _lengthMax = json['length_max'];
    _weightMin = json['weight_min'];
    _weightMax = json['weight_max'];
    _lifespan = json['lifespan'];
    _habitat = json['habitat'];
    _diet = json['diet'];
    _geoRange = json['geo_range'];
    _imageLink = json['image_link'];
    _id = json['id'];
  }
  String? _name;
  String? _latinName;
  String? _animalType;
  String? _activeTime;
  String? _lengthMin;
  String? _lengthMax;
  String? _weightMin;
  String? _weightMax;
  String? _lifespan;
  String? _habitat;
  String? _diet;
  String? _geoRange;
  String? _imageLink;
  num? _id;
AnimalModel copyWith({  String? name,
  String? latinName,
  String? animalType,
  String? activeTime,
  String? lengthMin,
  String? lengthMax,
  String? weightMin,
  String? weightMax,
  String? lifespan,
  String? habitat,
  String? diet,
  String? geoRange,
  String? imageLink,
  num? id,
}) => AnimalModel(  name: name ?? _name,
  latinName: latinName ?? _latinName,
  animalType: animalType ?? _animalType,
  activeTime: activeTime ?? _activeTime,
  lengthMin: lengthMin ?? _lengthMin,
  lengthMax: lengthMax ?? _lengthMax,
  weightMin: weightMin ?? _weightMin,
  weightMax: weightMax ?? _weightMax,
  lifespan: lifespan ?? _lifespan,
  habitat: habitat ?? _habitat,
  diet: diet ?? _diet,
  geoRange: geoRange ?? _geoRange,
  imageLink: imageLink ?? _imageLink,
  id: id ?? _id,
);
  String? get name => _name;
  String? get latinName => _latinName;
  String? get animalType => _animalType;
  String? get activeTime => _activeTime;
  String? get lengthMin => _lengthMin;
  String? get lengthMax => _lengthMax;
  String? get weightMin => _weightMin;
  String? get weightMax => _weightMax;
  String? get lifespan => _lifespan;
  String? get habitat => _habitat;
  String? get diet => _diet;
  String? get geoRange => _geoRange;
  String? get imageLink => _imageLink;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['latin_name'] = _latinName;
    map['animal_type'] = _animalType;
    map['active_time'] = _activeTime;
    map['length_min'] = _lengthMin;
    map['length_max'] = _lengthMax;
    map['weight_min'] = _weightMin;
    map['weight_max'] = _weightMax;
    map['lifespan'] = _lifespan;
    map['habitat'] = _habitat;
    map['diet'] = _diet;
    map['geo_range'] = _geoRange;
    map['image_link'] = _imageLink;
    map['id'] = _id;
    return map;
  }


}