import 'package:flutter_riverpod/legacy.dart';

class BottomController extends StateNotifier<int> {
  BottomController() : super(0);
  void setIndex(int index) {
    state = index;
  }
}
