import '../database/vocabulary_database.dart';
import '../services/io_service.dart';
import 'home_page.dart';


class SearchPage{
SearchPage(){
  searchVocabulary();
}

void searchVocabulary() {
  print('\n\n    Search - Qidiruv: \n');
  io.console('Enter text->');
  String search = io.text;
  int count = 0;
  for (var element in vocabulary) {
    if (element.word == search || element.translation == search) {
      print('${element.word}-${element.translation}');
      count++;
    }
  }
  if (count == 0) {
    print('Vocabulary is not found 🤷‍♂️');
  }
  print('1 -> Do you want to search again?');
  print('2 -> Back');
  print('0 -> Exit!');
  io.console('Enter ->');
  int num = io.number;
  if (num == 0) {
    print('Program is over 🤦');
  }
  else if (num == 2) {
    HomePage();
  }else{
    searchVocabulary();
  }
}

}