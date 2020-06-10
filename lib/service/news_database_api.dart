import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:rgis/models/mural.dart';

class NewsDatabaseApi {
  Firestore _fs = Firestore.instance;

  //Todas as Noticias
  Future<QuerySnapshot> fetchNews() {
    return _fs
        .collection('news')
        .orderBy('datePublish',descending: true)
        .getDocuments();
  }

  //Noticias em Destaque
  Future<QuerySnapshot> fetchNewsFeatured() {
    return _fs
        .collection('news')
        .where('featured', isEqualTo: 0)
        .getDocuments();
  }

  Future<List<Mural>> fetchMural() async {
    List<Mural> mural = [];
    QuerySnapshot query = await fetchNews();

    mural = query.documents
        .map((DocumentSnapshot doc) => Mural.fromJson(doc.data))
        .toList();

    return mural;
  }

  Future<List<Mural>> fetchMuralFeatured() async {
    List<Mural> mural = [];
    QuerySnapshot query = await fetchNewsFeatured();

    mural = query.documents
        .map((DocumentSnapshot doc) => Mural.fromJson(doc.data))
        .toList();

    return mural;
  }


}
