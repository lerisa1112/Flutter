import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../widgets/back_button_widget.dart';

import 'dart:io';

class ImagePickerHelper {
  final ImagePicker _picker = ImagePicker();

  /// Pick an image from gallery
  Future<File?> pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    }
    return null;
  }

  /// Pick an image from camera
  Future<File?> pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return File(image.path);
    }
    return null;
  }
}
