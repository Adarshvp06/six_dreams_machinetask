import 'package:flutter/material.dart';

class ProfileStateprovider with ChangeNotifier {
  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;

  void toggleExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
