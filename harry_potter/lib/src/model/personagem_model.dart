class PersonagemModel {
  final String id;
  final String name;
  final String house;
  final String image;
  final String actor;
  final String species;
  final List<String> alternativeNames;

  PersonagemModel({
    required this.id,
    required this.name,
    required this.house,
    required this.image,
    required this.actor,
    required this.species,
    required this.alternativeNames,
  });

  factory PersonagemModel.fromJson(Map<String, dynamic> json) {
    return PersonagemModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      house: json['house'] ?? '',
      image: json['image'] ?? '',
      actor: json['actor'] ?? '',
      species: json['species'] ?? '',
      alternativeNames: json['alternate_names'] != null
          ? List<String>.from(json['alternate_names'])
          : [],
    );
  }
}
