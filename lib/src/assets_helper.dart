// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'models/asset_entity.dart';

class AssetsHelper {
  static List<AssetEntity> imagesPaths = [];

  static Future<void> init({String? path, List<String>? extensions}) async {
    final Map<String, dynamic> assets = jsonDecode(
      await rootBundle.loadString('AssetManifest.json'),
    );

    imagesPaths = assets.keys
        .where((String key) => key.contains('images/'))
        .where((String key) => key.contains('.jpg') || key.contains('.png'))
        .map((e) => AssetEntity(path: e))
        .toList();
  }

  static String getImage(String key) =>
      imagesPaths.firstWhere((element) => element.key == key).path;
}
