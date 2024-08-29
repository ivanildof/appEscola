// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'dart:html' as html;

Future<String> uploadImage(BuildContext context, String storagePath) async {
  if (storagePath.isEmpty) {
    throw ArgumentError("storagePath must be provided.");
  }

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
  }

  Uint8List? imageData;
  String fileName;
  String mimeType;

  if (kIsWeb) {
    // Web platform
    html.File? pickedFile = await _pickImageWeb();
    if (pickedFile == null) {
      throw Exception("No image was selected.");
    }

    imageData = await pickedFile.readAsBytes();
    fileName = pickedFile.name;
    mimeType = pickedFile.type;
  } else {
    // Mobile platform
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (imageFile == null) {
      throw Exception("No image was selected.");
    }

    imageData = await imageFile.readAsBytes();
    fileName = path.basename(imageFile.path);
    mimeType = 'image/' + path.extension(imageFile.path).replaceAll('.', '');
  }

  // Exibe o pop-up de carregamento
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 16.0),
              Text('Carregando...', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      );
    },
  );

  try {
    // Extract the bucket name and path from the storagePath
    Uri storageUri = Uri.parse(storagePath);
    String bucketName = storageUri.authority;
    String fullPath = storageUri.path + '/' + fileName;

    // Create a reference to the storage bucket
    FirebaseStorage storage =
        FirebaseStorage.instanceFor(bucket: 'gs://$bucketName');
    Reference storageReference = storage.ref().child(fullPath);

    // Create metadata for the upload
    SettableMetadata metadata = SettableMetadata(contentType: mimeType);

    // Upload the file with metadata
    UploadTask uploadTask = storageReference.putData(imageData, metadata);
    TaskSnapshot taskSnapshot = await uploadTask;

    // Get and return the download URL
    String downloadURL = await taskSnapshot.ref.getDownloadURL();
    return downloadURL;
  } finally {
    // Remove o pop-up de carregamento após o upload
    Navigator.of(context).pop();
  }
}

Future<html.File?> _pickImageWeb() async {
  html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
  uploadInput.click();

  await uploadInput.onChange.first;
  if (uploadInput.files!.isEmpty) return null;
  return uploadInput.files!.first;
}

extension on html.File {
  Future<Uint8List> readAsBytes() async {
    final reader = html.FileReader();
    reader.readAsArrayBuffer(this);
    await reader.onLoadEnd.first;
    return reader.result as Uint8List;
  }
}
