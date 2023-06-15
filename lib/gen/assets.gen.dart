/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back-arrow.svg
  SvgGenImage get backArrow => const SvgGenImage('assets/icons/back-arrow.svg');

  /// File path: assets/icons/icback.svg
  SvgGenImage get icback => const SvgGenImage('assets/icons/icback.svg');

  /// File path: assets/icons/icdrawer.svg
  SvgGenImage get icdrawer => const SvgGenImage('assets/icons/icdrawer.svg');

  /// File path: assets/icons/icmenu.svg
  SvgGenImage get icmenu => const SvgGenImage('assets/icons/icmenu.svg');

  /// File path: assets/icons/icnext.svg
  SvgGenImage get icnext => const SvgGenImage('assets/icons/icnext.svg');

  /// File path: assets/icons/icplay.svg
  SvgGenImage get icplay => const SvgGenImage('assets/icons/icplay.svg');

  /// File path: assets/icons/icsearch.svg
  SvgGenImage get icsearch => const SvgGenImage('assets/icons/icsearch.svg');

  /// File path: assets/icons/ictin.svg
  SvgGenImage get ictin => const SvgGenImage('assets/icons/ictin.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [backArrow, icback, icdrawer, icmenu, icnext, icplay, icsearch, ictin];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/FZWivbri0Xk.png
  AssetGenImage get fZWivbri0Xk =>
      const AssetGenImage('assets/images/FZWivbri0Xk.png');

  /// File path: assets/images/OKLqGsCT8qs.png
  AssetGenImage get oKLqGsCT8qs =>
      const AssetGenImage('assets/images/OKLqGsCT8qs.png');

  /// File path: assets/images/RnCPiXixooY.png
  AssetGenImage get rnCPiXixooY =>
      const AssetGenImage('assets/images/RnCPiXixooY.png');

  /// File path: assets/images/img_handphone.png
  AssetGenImage get imgHandphone =>
      const AssetGenImage('assets/images/img_handphone.png');

  /// File path: assets/images/img_handphone_two.png
  AssetGenImage get imgHandphoneTwo =>
      const AssetGenImage('assets/images/img_handphone_two.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [fZWivbri0Xk, oKLqGsCT8qs, rnCPiXixooY, imgHandphone, imgHandphoneTwo];
}

class $AssetsMusicsGen {
  const $AssetsMusicsGen();

  /// File path: assets/musics/HUNGCAOQLCProdbyJayBach.mp3
  String get hUNGCAOQLCProdbyJayBach =>
      'assets/musics/HUNGCAOQLCProdbyJayBach.mp3';

  /// File path: assets/musics/LACRhymastic.mp3
  String get lACRhymastic => 'assets/musics/LACRhymastic.mp3';

  /// File path: assets/musics/TheLegend.mp3
  String get theLegend => 'assets/musics/TheLegend.mp3';

  /// List of all assets
  List<String> get values => [hUNGCAOQLCProdbyJayBach, lACRhymastic, theLegend];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMusicsGen musics = $AssetsMusicsGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
