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
import 'dart:convert';
import 'package:image/image.dart' as img;

Future<String> uploadedFileToBase6(
    BuildContext context, FFUploadedFile file) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (file.name == null) {
    throw Exception('File name is null');
  }

  // Show the loading dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                "Processando e otimizando sua imagem, por favor aguarde...     (Tempo: 5 Segundos)"),
          ],
        ),
      );
    },
  );

  // Simulate a delay to show the dialog for 1 seconds
  await Future.delayed(Duration(milliseconds: 300));

  // Load the image from bytes
  final image = img.decodeImage(file.bytes!);

  // Check if the image is loaded successfully
  if (image == null) {
    Navigator.of(context).pop(); // Hide the loading dialog
    throw Exception('Falha ao codificar image');
  }

  img.Image resizedImage;
  // Resize the image to 610x610 pixels
  if (image.width > 610 || image.height > 610) {
    resizedImage = img.copyResize(image,
        width: 610, height: 610, interpolation: img.Interpolation.cubic);
  } else {
    // Keep the original size if it's smaller than 610x610
    resizedImage = image;
  }

  // Determine the format and compress accordingly
  List<int> compressedImage;
  if (file.name!.toLowerCase().endsWith('.jpg') ||
      file.name!.toLowerCase().endsWith('.jpeg')) {
    // Compress JPEG images
    compressedImage = img.encodeJpg(resizedImage, quality: 70);
  } else if (file.name!.toLowerCase().endsWith('.png')) {
    // Compress PNG images
    compressedImage = img.encodePng(resizedImage, level: 6);
  } else {
    Navigator.of(context).pop(); // Hide the loading dialog
    // Unsupported format
    throw Exception('image não suportada');
  }

  // Convert the compressed image to base64
  final base64String = base64Encode(compressedImage);

  Navigator.of(context).pop(); // Hide the loading dialog

  return base64String;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
