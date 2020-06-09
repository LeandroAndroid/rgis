class Mural{

  String id;
  String title;
  String image;
  String dataPublish;
  List<String> content;

  Mural({this.id, this.title, this.image, this.dataPublish, this.content});

  Mural.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.title = json['title'];
    this.image = json['image'];
    this.dataPublish = json['dataPublish'];
    this.content = json['content'];
  }


}