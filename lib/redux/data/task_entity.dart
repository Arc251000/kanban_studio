


class TaskEntity{

  int id;
  String resume;
  String description;
  String state;
  String? user;
  

  TaskEntity({required this.id,required this.resume,required this.description, required this.state, this.user});
  
  factory TaskEntity.fromJson(Map<String, dynamic> json) {
      return TaskEntity(
        id: json['id'],
        resume: json['resume'],
        description: json['description'],
        state: json['state'],
        user: json['imgUrl']
      );

    }


}