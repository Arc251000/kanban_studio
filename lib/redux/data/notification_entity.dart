

class NotificationEntity{

  int id;
  String text;
  String url;
  bool viewed;
  bool accepted;
  

  NotificationEntity({required this.id,required this.text,required this.url,required this.viewed,required this.accepted});
  

  factory NotificationEntity.fromJson(Map<String, dynamic> json) {
      
      return NotificationEntity(
        id: json['id'],
        text: json['text'],
        url: json['url'],
        viewed: json['viewed'],
        accepted: json['accepted'],
      );

  }

}