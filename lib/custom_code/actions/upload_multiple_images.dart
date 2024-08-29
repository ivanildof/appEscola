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

Future<List<String>> uploadMultipleImages(String storagePath) async {
  if (storagePath.isEmpty) {
    throw ArgumentError("storagePath must be provided.");
  }

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
  }

  List<html.File> pickedFiles = await _pickImagesWeb();

  if (pickedFiles.isEmpty) {
    throw Exception("No images were selected.");
  }

  List<String> downloadURLs = [];

  for (html.File file in pickedFiles) {
    Uint8List imageData = await file.readAsBytes();

    String fileName = file.name;

    String mimeType = file.type;

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

    downloadURLs.add(downloadURL);
  }

  return downloadURLs;
}

Future<List<html.File>> _pickImagesWeb() async {
  html.FileUploadInputElement uploadInput = html.FileUploadInputElement();

  uploadInput.multiple =
      true; // Set this to true to allow multiple file selection

  uploadInput.click();

  await uploadInput.onChange.first;

  if (uploadInput.files!.isEmpty) return [];

  return uploadInput.files!;
}

extension on html.File {
  Future<Uint8List> readAsBytes() async {
    final reader = html.FileReader();

    reader.readAsArrayBuffer(this);

    await reader.onLoadEnd.first;

    return reader.result as Uint8List;
  }
}
