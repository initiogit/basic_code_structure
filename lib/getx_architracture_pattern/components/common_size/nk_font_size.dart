import 'common_hight_width.dart';

class NkFontSize {
  const NkFontSize._();

  static double extraSmallFont({double? extraSmallFont}) =>
      extraSmallFont ?? height * 0.08;

  static double smallFont({double? smallFont}) => smallFont ?? height * 0.012;

  static double mediumFont({double? mediumFont}) =>
      mediumFont ?? height * 0.014;

  static double regularFont({double? regularFont}) =>
      regularFont ?? height * 0.016;

  static double largeFont({double? largeFont}) => largeFont ?? height * 0.020;

  static double extraLargeFont({double? extraLargeFont}) =>
      extraLargeFont ?? height * 0.040;
}
