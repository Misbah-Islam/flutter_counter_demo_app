import 'package:flutter/material.dart';

class DemoProvider extends ChangeNotifier {

  int count = 0;

  addCount(){
    count++;
    notifyListeners();
  }

  resetCount(){
    count = 0;
    notifyListeners();

  }

  removeCount(){
    count--;
    notifyListeners();

  }
}
