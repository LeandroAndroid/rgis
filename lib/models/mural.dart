class Mural{

  String id;
  String title;
  String image;
  String datePublish;
  int feactured;
  List<dynamic> content;

  Mural({this.id, this.title, this.image, this.datePublish, this.content, this.feactured});

  Mural.fromJson(Map<String, dynamic> _json){
    this.id = _json['id'];
    this.title = _json['title'];
    this.image = _json['image'];
    this.datePublish = _json['datePublish'];
    this.feactured = _json['feactured'];
    this.content = _json['content'];
  }


}