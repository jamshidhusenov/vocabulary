import 'package:vocabulary/database/vocabulary_database.dart';
import '../model/vocabulary_model.dart';
import '../services/io_service.dart';
import 'home_page.dart';

class AddPage {
  AddPage() {
    addWord();
  }

  addWord() {
    print('Please enter the new word that you want to add');
    String word = io.text;

    print('Please enter the word that mean of the word');
    String translate = io.text;
    int count = vocabulary.length;
    Vocabulary newWord = Vocabulary(id: count++, word: word, translation: translate);
    vocabulary.add(newWord);

    print('${newWord.id}. $word : $translate');

    print('you want to continue adding ? ');
    print('1. yes            2.no');
    String choose = io.text;
    switch (choose) {
      case '1':
        {
          addWord();
          break;
        }
      case '2':
        {
          HomePage();
          break;
        }
      default:
        {}
    }
  }
}
