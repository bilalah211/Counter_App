import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier{
  int count = 0;
  int get counts => count;

  void setCount(){
    count++;
    notifyListeners();
  }

}