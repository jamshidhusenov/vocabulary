import 'dart:developer';

import 'package:vocabulary/model/vocabulary_model.dart';
import 'package:vocabulary/page/serivc_page.dart';
import 'package:vocabulary/page/update_page.dart';

import '../database/vocabulary_database.dart';
import '../services/io_service.dart';
import 'home_page.dart';

class ViewPage{
ViewPage(){  viewVocabulary();  }

  void viewVocabulary(){
    print("\n\n      Vocabularys - Lug'atlar  \n");

     for(int i=0; i < vocabulary.length; i++){
       if(i == 0) print('0-> Back');
       print('${i+1}-> ${vocabulary[i].translation} - ${vocabulary[i].word}');

     }
       io.console('Entr command <- ');
       int command = io.number;
       if(command == 0) HomePage();

       if(command > vocabulary.length ){
          print('Wrong action! 🤣');
          viewVocabulary();
       }
       if(command<=vocabulary.length){
         ServicPage().serivc(command);
       }

  }






}