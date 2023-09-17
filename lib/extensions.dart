import 'package:flutter/material.dart';

extension SimpleNavigation on BuildContext {
  navigateTo(Widget view) {
    Navigator.push(this, MaterialPageRoute(builder: (context) {
      return view;
    }));
  }
}
