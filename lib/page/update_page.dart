

import 'package:vocabulary/page/view_page.dart';

import '../database/vocabulary_database.dart';
import '../services/io_service.dart';

class UpdatePage{

  void viewUpdate(int commond){
    print('\n\n         Update. 👨‍🔧\n');
    io.console('Enter word <= ');
    vocabulary[commond-1].word = io.text;
    io.console('Enter translation <= ');
    vocabulary[commond-1].translation = io.text;
    ViewPage().viewVocabulary();
  }
}