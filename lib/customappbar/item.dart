import 'package:flutter/cupertino.dart';

class TabItem {
  final String title;
  final AssetImage assetImage;

  /// Optional if not provided ,[icon] is used
  final AssetImage activeIcon;

  const TabItem({
    this.title,
    @required this.assetImage,
    this.activeIcon,
  });


}
