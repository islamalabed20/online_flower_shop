import 'package:get/get.dart';

class SignUpController extends GetxController {
  // Observable for password visibility
  var isPasswordVisible = false.obs;
  var isRePasswordVisible = false.obs;

  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleRePasswordVisibility() {
    isRePasswordVisible.value = !isRePasswordVisible.value;
  }
}
