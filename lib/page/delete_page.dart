

import 'package:vocabulary/page/view_page.dart';

import '../database/vocabulary_database.dart';

class DeletePage{
  void  viewDelete(int commond){
    vocabulary.removeAt(commond-1);
    ViewPage();
  }
}