import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:rgis/models/mural.dart';
import 'package:rgis/service/news_database_api.dart';

part 'mural_store.g.dart';

NewsDatabaseApi _api = NewsDatabaseApi();

class MuralStore = _MuralStore with _$MuralStore;

abstract class _MuralStore with Store {



  @observable
  ObservableList<Mural> news = ObservableList<Mural>.of([]);

  @action
  setNews(ObservableList<Mural> list) => this.news = list;

  @action
  Future<Null> fetch() async {
    QuerySnapshot query = await _api.fetchNews();
     setNews(ObservableList.of(
      query.documents
          .map((DocumentSnapshot doc) => Mural.fromJson(doc.data))
          .toList(),
    ));
  }


}
