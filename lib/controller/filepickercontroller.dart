import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class FilePickerController extends GetxController {
  var filePath = ''.obs;

  Future<void> pickPDF() async {
    // Check the current permission status
    var status = await Permission.storage.status;
    if (status.isDenied) {
      // Request permission
      status = await Permission.storage.request();
    }

    if (status.isGranted) {
      // Pick a PDF file
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        filePath.value = result.files.single.path!;
      } else {
        // User canceled the picker
        filePath.value = '';
      }
    } else {
      // Handle the case when the user denies the permission
      Get.snackbar('Error', 'Permission Denied',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
