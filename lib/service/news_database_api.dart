import 'package:cloud_firestore/cloud_firestore.dart';

class NewsDatabaseApi{

  Firestore _fs = Firestore.instance;


  //Todas as Noticias
  Future<QuerySnapshot> fetchNews(){
    return _fs
        .collection('news')
        .getDocuments();
  }

  //Noticias em Destaque
  Future<QuerySnapshot> fetchNewsFeatured() {
    return _fs
        .collection('news')
        .where('featured', isEqualTo: true)
        .getDocuments();
  }











}