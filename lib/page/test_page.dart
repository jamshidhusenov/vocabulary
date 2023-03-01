import 'package:vocabulary/database/vocabulary_database.dart';
import 'package:vocabulary/page/home_page.dart';

import '../services/io_service.dart';

class TestPage{
  TestPage(){
    test();
  }

  void test(){
     print('  1 -> Eng-Uzb Test\n  2 -> Uzb-Eng Test\n  0 -> back\n');
int command = io.number;
switch(command){
  case 1:testEngUzb();break;
  case 2:testUzbEng();break;
  case 0:HomePage();
}
  }

  void testEngUzb() {
    print('     QUIZ\n  1 ->  Testing new words\n  2 ->  Testing All words\n  0 -> back');
    int command = io.number;
    switch(command){
      case 1:{testNew();}break;
      case 2:{testAll();}break;
      case 0:{HomePage();}break;
    }
  }
  void testNew(){
    var list = vocabulary.reversed.toList();
    print('  You have ${list.length} words');
    print('  How many tests do you want?');
    int number = io.number;
    int trueAnswer=0;
    list.removeRange(number, list.length);
    list.shuffle();
    for(int i = 0; i < number ; i ++){
      print('test - ${i+1} ${list[i].word} :');
      String text = io.text;
      if(text == list[i].translation)trueAnswer++;
    }
    print('\n  You have earned ${trueAnswer/number*100} percent\n  1 ->  redo the test\n  0 -> back\n');
    int n = io.number;
    if(n == 1){testNew();}
    else{TestPage();}
  }

  void testAll() {

    var list = vocabulary.toList();
    print('  You have ${list.length} words');
    print('  How many tests do you want?');
    int number = io.number;
    int trueAnswer=0;
    list.removeRange(number, list.length);
    list.shuffle();
    for(int i = 0; i < number ; i ++){
      print('test - ${i+1} ${list[i].word} :');
      String text = io.text;
      if(text == list[i].translation)trueAnswer++;
    }
    print('\n  You have earned ${trueAnswer/number*100} percent\n  1 ->  redo the test\n  0 -> back\n');
    int n = io.number;
    if(n == 1){testNew();}
    else{TestPage();}
  }


  void testUzbEng() {
    print('     QUIZ\n  1 ->  Yangi so\'zlardan test\n  2 ->  Barcha so\'zlardan test\n  0 -> back');
    int command = io.number;
    switch(command){
      case 1:{testNewUz();}break;
      case 2:{testAllUz();}break;
      case 0:{HomePage();}break;
    }
  }

  void testNewUz(){

    var list = vocabulary.reversed.toList();
    print('  You have ${list.length} words');
    print('  How many tests do you want?');
    int number = io.number;
    int trueAnswer=0;
    list.removeRange(number, list.length);
    list.shuffle();
    for(int i = 0; i < number ; i ++){
      print('test - ${i+1} ${list[i].translation} :');
      String text = io.text;
      if(text == list[i].word)trueAnswer++;
    }
    print('\n  You have earned ${trueAnswer/number*100} percent\n  1 ->  redo the test\n  0 -> back\n');
    int n = io.number;
    if(n == 1){testNewUz();}
    else{TestPage();}
  }

  void testAllUz(){

    var list = vocabulary.toList();
    print('  You have ${list.length} words');
    print('  How many tests do you want?');
    int number = io.number;
    int trueAnswer=0;
    list.removeRange(number, list.length);
    list.shuffle();
    for(int i = 0; i < number ; i ++){
      print('test - ${i+1} ${list[i].translation} :');
      String text = io.text;
      if(text == list[i].word)trueAnswer++;
    }
    print('\n  You have earned ${trueAnswer/number*100} percent\n  1 ->  redo the test\n  0 -> back\n');
    int n = io.number;
    if(n == 1){testNewUz();}
    else{TestPage();}
  }
}