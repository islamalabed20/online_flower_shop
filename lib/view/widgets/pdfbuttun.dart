import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_flower_shop/controller/filepickercontroller.dart';

class CustomPDFButton extends StatelessWidget {
  final FilePickerController controller = Get.put(FilePickerController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // PDF Picker Button
        Obx(() => Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: InkWell(
                onTap: controller.pickPdf,
                child: Container(
                  height: 60, // Adjust the height as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          controller.filePath.value.isEmpty
                              ? 'Upload PDF '
                              : controller.filePath.value,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      )),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          child: Image.asset('assets/images/pdf-file1.png')),
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
