import 'package:flutter/cupertino.dart';

import 'common_hight_width.dart' as common_hight_width;

SizedBox nkSmallSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height: height ?? common_hight_width.height * .010,
      width: width ?? common_hight_width.width * .010,
      child: child,
    );

SizedBox nkMediumSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height: height ?? common_hight_width.height * .016,
      width: width ?? common_hight_width.width * .016,
      child: child,
    );

SizedBox nkLargeSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height: height ?? common_hight_width.height * .086,
      width: width ?? common_hight_width.width * .086,
      child: child,
    );

SizedBox nkExtraLargeSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height: height ?? common_hight_width.height * .16,
      width: width ?? common_hight_width.width * .16,
      child: child,
    );

/// *********** General use Padding  ***************

EdgeInsets nkSmallPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.height * .02,
      right: right ?? common_hight_width.width * .02,
      bottom: bottom ?? common_hight_width.height * .02,
      left: left ?? common_hight_width.width * .02,
    );

EdgeInsets nkMediumPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.height * .04,
      right: right ?? common_hight_width.width * .04,
      bottom: bottom ?? common_hight_width.height * .04,
      left: left ?? common_hight_width.width * .04,
    );

EdgeInsets nkLargePadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.height * .012,
      right: right ?? common_hight_width.width * .012,
      bottom: bottom ?? common_hight_width.height * .012,
      left: left ?? common_hight_width.width * .012,
    );
EdgeInsets nkRegularPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.height * .010,
      right: right ?? common_hight_width.width * .010,
      bottom: bottom ?? common_hight_width.height * .010,
      left: left ?? common_hight_width.width * .010,
    );

EdgeInsets nkExtraLargePadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.height * .14,
      right: right ?? common_hight_width.width * .14,
      bottom: bottom ?? common_hight_width.height * .14,
      left: left ?? common_hight_width.width * .14,
    );

EdgeInsets nkSymmetricPadding({
  double? horizontal,
  double? vertical,
}) =>
    EdgeInsets.symmetric(
      horizontal: horizontal ?? common_hight_width.width * .020,
      vertical: vertical ?? common_hight_width.height * .020,
    );
