class MagiaModel {
  final String id;
  final String name;
  final String description;

  MagiaModel({
    required this.id,
    required this.name,
    required this.description
  });

  factory MagiaModel.fromJson(Map<String, dynamic> json){
    return MagiaModel(
      id: json['id'] ?? '', 
      name: json['name'] ?? '', 
      description: json['description'] ?? ''
      );
  }
}