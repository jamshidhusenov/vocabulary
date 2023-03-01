import 'dart:io';
import '../database/vocabulary_database.dart';
import '../services/io_service.dart';
import 'home_page.dart';


class SearchPage{

SearchPage(){   searchVocabulary();    }

void searchVocabulary() {

     print('\n\n            Search - Qidiruv:\n ');
     io.console(' Enter text: ');
     String search = io.text;

        int count = 0;
        for (int i=0; i < vocabulary.length; i++) {

           if ( vocabulary[i].word == search || vocabulary[i].translation == search ){
               print(" ${ vocabulary[i].word } - ${vocabulary[i].translation }");
               count++;
           }
        }

           if (count == 0) {
               print(' Vocabulary is not found 🤷‍♂️');
           }

              print('\n  1 -> Do you want to search again? \n  2 -> Back \n  0 -> Exit!\n ');
              int num = io.number;

               if (num == 0) {
                     print(' \n\n\n  Program is over 🤦');
               }
               else if (num == 2) {
                     HomePage();
               }
               else{
                     searchVocabulary();
               }
    }

}