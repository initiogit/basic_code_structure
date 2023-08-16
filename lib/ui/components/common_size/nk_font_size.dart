import 'package:basic_code_structure/utills/sizer_utills/sizer_utils.dart';

class NkFontSize {
  const NkFontSize._();

  static double extraSmallFont({double? extraSmallFont}) =>
      extraSmallFont ?? AppFontSize.size_4;

  static double smallFont({double? smallFont}) =>
      smallFont ?? AppFontSize.size_6;

  static double mediumFont({double? mediumFont}) =>
      mediumFont ?? AppFontSize.size_10;

  static double regularFont({double? regularFont}) =>
      regularFont ?? AppFontSize.size_14;

  static double largeFont({double? largeFont}) =>
      largeFont ?? AppFontSize.size_18;

  static double extraLargeFont({double? extraLargeFont}) =>
      extraLargeFont ?? AppFontSize.size_26;

  /*static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }*/
}
