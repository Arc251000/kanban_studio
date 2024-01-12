


class ProjectEntity{

  int id;
  String name;
  String owner;
  

  ProjectEntity({required this.id,required this.name,required this.owner});
  

  factory ProjectEntity.fromJson(Map<String, dynamic> json,String owner) {
    return ProjectEntity(
      id: json['id'],
      name: json['name'],
      owner: owner,
    );

  }
}