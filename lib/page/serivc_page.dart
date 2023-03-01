

import 'package:vocabulary/page/delete_page.dart';
import 'package:vocabulary/page/update_page.dart';
import 'package:vocabulary/page/view_page.dart';

import '../database/vocabulary_database.dart';
import '../services/io_service.dart';

class ServicPage{

  void serivc( int commond){
    print("\n\n         Serice!\n");
    print('👉 ${vocabulary[commond-1].translation} - ${vocabulary[commond-1].word}');
    print('1 -> Update');
    print('2 -> Delate');
    print('3 -> Back');
    print('0 -> Exit');
    io.console('enter <= ');
    int chus = io.number;


    if(chus == 1){
      UpdatePage().viewUpdate(commond);
    }
    else if(chus == 2){
     DeletePage().viewDelete(commond);
    }
    else if(chus == 3){
      ViewPage();
    }else if(chus == 0){
      print('\n\n\n Program is over. 🤦');
    }
    else{
      serivc(commond);
    }
  }
}