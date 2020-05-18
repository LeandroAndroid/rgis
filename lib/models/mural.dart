class Mural{

  String title;
  String subtitle;
  String image;
  String dataPublicado;

  Mural({this.title, this.subtitle, this.image, this.dataPublicado});

  Mural.fromJson(Map<String, dynamic> json){
    this.title = json['title'];
    this.subtitle = json['subtitle'];
    this.image = json['image'];
    this.dataPublicado = json['dataPublicado'];
  }


}