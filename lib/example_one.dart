import 'package:flutter/foundation.dart';

class ExampleOne with ChangeNotifier{

  double value = 1.0;
  double get values => value;

  void setValue(double val){
    value = val;
    notifyListeners();
  }


}