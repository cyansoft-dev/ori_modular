import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:geolocator/geolocator.dart';

class Helpers {
  static String? getImageStringSync(String? path) {
    String? images;
    if (path != null) {
      File imageFile = File(path);
      final exists = imageFile.existsSync();
      if (!exists) {
        imageFile.createSync(recursive: true);
      }
      final bytes = imageFile.readAsBytesSync();
      images = base64Encode(bytes);
    }
    return images;
  }

  static Uint8List? getImageBytesSync(String? path) {
    Uint8List? images;
    if (path != null) {
      File imageFile = File(path);
      final exists = imageFile.existsSync();
      if (!exists) {
        imageFile.createSync(recursive: true);
      }
      images = imageFile.readAsBytesSync();
    }
    return images;
  }

  static Future<Uint8List?> getImageBytes(String? path) async {
    Uint8List? images;
    if (path != null) {
      File imageFile = File(path);
      final exists = await imageFile.exists();
      if (!exists) {
        await imageFile.create(recursive: true);
      }
      images = await imageFile.readAsBytes();
    }
    return images;
  }

  static Future<File?> getImageFile(String? path, Uint8List? bytes) async {
    File? file;
    if (path != null && bytes != null) {
      file = File(path);
      final exists = await file.exists();

      if (!exists) {
        await file.writeAsBytes(bytes);
      }
    }
    return file;
  }

  static File? getImageFileSync(String? path, Uint8List? bytes) {
    File? file;
    if (path != null && bytes != null) {
      file = File(path);
      final exists = file.existsSync();

      if (!exists) {
        file.writeAsBytesSync(bytes);
      }
    }
    return file;
  }

  static double distanceLocation(double storeLatitude,double storeLongitude, double currentLatitude, double currentLongitude) {
    return Geolocator.distanceBetween(storeLatitude, storeLongitude, currentLatitude, currentLongitude);
  }
}
