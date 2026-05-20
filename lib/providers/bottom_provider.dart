import 'package:ecommerce_app/controllers/bottom_controller.dart';
import 'package:flutter_riverpod/legacy.dart';

final bottomProvider = StateNotifierProvider<BottomController, int>((ref) {
  return BottomController();
});
