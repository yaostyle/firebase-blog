import 'package:firebase_database/firebase_database.dart';

class Post {
  static const KEY = "key";
  static const DATE = "date";
  static const TITLE = "title";
  static const BODY = "body";

  final String _date;
  final String _title;
  final String _key;
  final String _body;

  Post(this._date, this._key, this._title, this._body);

  String get key => _key;
  String get date => _date;
  String get title => _title;
  String get body => _body;


  Post.fromSnapshot(DataSnapshot snap):
      this._key = snap.key,
      this._body = snap.value[BODY],
      this._date = snap.value[DATE],
      this._title = snap.value[TITLE];

  toMap() {
    return {};
  }
}
