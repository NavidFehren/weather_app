/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDataGen {
  const $AssetsDataGen();

  /// File path: assets/data/cities.json
  String get cities => 'assets/data/cities.json';

  /// List of all assets
  List<String> get values => [cities];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/steve_jobs.jpeg
  AssetGenImage get steveJobs =>
      const AssetGenImage('assets/images/steve_jobs.jpeg');

  $AssetsImagesWeatherGen get weather => const $AssetsImagesWeatherGen();

  /// List of all assets
  List<AssetGenImage> get values => [steveJobs];
}

class $AssetsImagesWeatherGen {
  const $AssetsImagesWeatherGen();

  /// File path: assets/images/weather/cloudy.png
  AssetGenImage get cloudy =>
      const AssetGenImage('assets/images/weather/cloudy.png');

  /// File path: assets/images/weather/rain.png
  AssetGenImage get rain =>
      const AssetGenImage('assets/images/weather/rain.png');

  /// File path: assets/images/weather/snow.png
  AssetGenImage get snow =>
      const AssetGenImage('assets/images/weather/snow.png');

  /// File path: assets/images/weather/sun.png
  AssetGenImage get sun => const AssetGenImage('assets/images/weather/sun.png');

  /// File path: assets/images/weather/unknown.jpg
  AssetGenImage get unknown =>
      const AssetGenImage('assets/images/weather/unknown.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [cloudy, rain, snow, sun, unknown];
}

class Assets {
  Assets._();

  static const $AssetsDataGen data = $AssetsDataGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
