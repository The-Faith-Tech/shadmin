import 'dart:developer';

import 'package:file_picker/file_picker.dart';

class Fileutils {
  static Future<FilePickerResult?> pickFile() async {
    try {
      var res = await FilePicker.platform.pickFiles();
      return res;
    } catch (e) {
      log("Error while picking file: ${e.toString()}");
      return null;
    }
  }

  static Future<FilePickerResult?> pickFiles() async {
    try {
      var res = await FilePicker.platform.pickFiles(allowMultiple: true);
      return res;
    } catch (e) {
      log("Error while picking file: ${e.toString()}");
      return null;
    }
  }
}
