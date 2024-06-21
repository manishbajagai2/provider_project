import 'package:flutter/material.dart';

class NumberState extends ChangeNotifier {
  List<int> numberList = [1, 2, 3, 4, 5];

  void addOne() {
    numberList.add(numberList.last + 1);
    notifyListeners();
  }
}
