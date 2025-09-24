// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_logos.png
  AssetGenImage get appLogosPng =>
      const AssetGenImage('assets/icons/app_logos.png');

  /// File path: assets/icons/app_logos.svg
  String get appLogosSvg => 'assets/icons/app_logos.svg';

  /// File path: assets/icons/cancel.svg
  String get cancel => 'assets/icons/cancel.svg';

  /// File path: assets/icons/fire_icon.svg
  String get fireIcon => 'assets/icons/fire_icon.svg';

  /// File path: assets/icons/star.svg
  String get star => 'assets/icons/star.svg';

  /// List of all assets
  List<dynamic> get values => [
    appLogosPng,
    appLogosSvg,
    cancel,
    fireIcon,
    star,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/canon_logo.png
  AssetGenImage get canonLogo =>
      const AssetGenImage('assets/images/canon_logo.png');

  /// File path: assets/images/conan.png
  AssetGenImage get conan => const AssetGenImage('assets/images/conan.png');

  /// File path: assets/images/conan_series.png
  AssetGenImage get conanSeries =>
      const AssetGenImage('assets/images/conan_series.png');

  /// File path: assets/images/demon_slayer_cover.png
  AssetGenImage get demonSlayerCover =>
      const AssetGenImage('assets/images/demon_slayer_cover.png');

  /// File path: assets/images/demon_slayer_logo.png
  AssetGenImage get demonSlayerLogo =>
      const AssetGenImage('assets/images/demon_slayer_logo.png');

  /// File path: assets/images/dragon_ball.png
  AssetGenImage get dragonBall =>
      const AssetGenImage('assets/images/dragon_ball.png');

  /// File path: assets/images/gon.png
  AssetGenImage get gon => const AssetGenImage('assets/images/gon.png');

  /// File path: assets/images/hunter_x_hunter.png
  AssetGenImage get hunterXHunter =>
      const AssetGenImage('assets/images/hunter_x_hunter.png');

  /// File path: assets/images/kakrot.png
  AssetGenImage get kakrot => const AssetGenImage('assets/images/kakrot.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/luffy.png
  AssetGenImage get luffy => const AssetGenImage('assets/images/luffy.png');

  /// File path: assets/images/naruto.png
  AssetGenImage get naruto => const AssetGenImage('assets/images/naruto.png');

  /// File path: assets/images/plan_image.png
  AssetGenImage get planImage =>
      const AssetGenImage('assets/images/plan_image.png');

  /// File path: assets/images/plan_page_hero.png
  AssetGenImage get planPageHero =>
      const AssetGenImage('assets/images/plan_page_hero.png');

  /// File path: assets/images/rocket_boy.svg
  String get rocketBoy => 'assets/images/rocket_boy.svg';

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// List of all assets
  List<dynamic> get values => [
    canonLogo,
    conan,
    conanSeries,
    demonSlayerCover,
    demonSlayerLogo,
    dragonBall,
    gon,
    hunterXHunter,
    kakrot,
    logo,
    luffy,
    naruto,
    planImage,
    planPageHero,
    rocketBoy,
    star,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
