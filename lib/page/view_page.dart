import 'package:vocabulary/model/vocabulary_model.dart';
import '../database/vocabulary_database.dart';
import '../services/io_service.dart';
import 'home_page.dart';

class ViewPage{
  ViewPage(){
    viewVocabulary();
}

  void viewVocabulary(){
     print("            Vocabularys - Lug'atlar  \n");

      for(int i=0; i < vocabulary.length; i++){
         if (i == 0) {
           print('  0 -> Back');
         }
            print('  ${i + 1} -> ${ vocabulary[i].translation } - ${ vocabulary[i].word }');
      }
         print('');
         int command = io.number;
         if(command == 0){
            HomePage();
         }
           if(command > vocabulary.length ){
              print('Wrong action! 🤣');
              viewVocabulary();
           }
                serivc(command);
  }


         void serivc( int commond ){

              print("\n\n               Service\n");
              print('  ${vocabulary[commond-1].translation} - ${vocabulary[commond-1].word}');
              print('  \n  1 -> Update \n  2 -> Delate \n  3 -> Back \n  0 -> Exit\n');
              int chus = io.number;


                    if(chus == 1){
                       print('\n\n             Update. 👨‍🔧\n');
                       io.console(' Enter word: ');
                       vocabulary[commond-1].word = io.text;
                       io.console(' Enter translation: ');
                       vocabulary[commond-1].translation = io.text;
                       viewVocabulary();
                    }
                     else if(chus == 2){
                         vocabulary.removeAt(commond-1);
                         ViewPage();
                     }
                     else if(chus == 3){
                         ViewPage();
                     }
                     else if(chus == 0){
                         print('\n\n\n Program is over. 🤦');
                     }
                    else{
                        serivc(commond);
                    }
        }




}