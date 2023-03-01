import 'package:vocabulary/page/add_page.dart';
import 'package:vocabulary/page/search_page.dart';
import 'package:vocabulary/page/test_page.dart';
import 'package:vocabulary/page/view_page.dart';

import '../services/io_service.dart';

class HomePage{
HomePage(){
viewPage();
}

void viewPage(){
  print('\n\n    Welcome to Vocabulary App \n\n');
  print('  1 -> Add new Vocabulary\n  2 -> Search Vocabulary\n  3 -> View Vocabulary\n  4 -> Test\n  0 -> Exit\n');
  int command = io.number;
  switch(command){
    case 1:{AddPage();}break;
    case 2:{SearchPage();}break;
    case 3:{ViewPage();}break;
    case 4:{TestPage();}break;
  }
}
}