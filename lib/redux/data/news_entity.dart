


class NewsEntity{

  int id;
  //String title;
  String text;
  String imgUrl;

  NewsEntity({required this.id,required this.text,required this.imgUrl});

  factory NewsEntity.fromJson(Map<String, dynamic> json) {
    return NewsEntity(
      id: json['id'],
      text: json['text'],
      imgUrl: json['imgUrl'],
    );

  }

}