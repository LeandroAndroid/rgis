import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

import 'package:rgis/models/mural.dart';
import 'package:rgis/service/news_database_api.dart';

part 'store.g.dart';

NewsDatabaseApi _api = NewsDatabaseApi();

class MuralStore = MuralStoreBase with _$MuralStore;

abstract class MuralStoreBase with Store {

  @observable
  ObservableList<Mural> news = ObservableList<Mural>.of([]);

  @action
  Future<Null> fetchCategories() async {
    QuerySnapshot query = await _api.fetchNews();
    news = ObservableList.of(
      query.documents
          .map((DocumentSnapshot doc) => Mural.fromJson(doc.data))
          .toList(),
    );
  }




}