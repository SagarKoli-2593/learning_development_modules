import 'dart:core';

class YoutubeUtils {
  static String formatToIndianHumanReadable(num unreadableNum) {
    String getStringAsTrimmedPrecision(num n, {int precision = 2}) =>
        num.parse(n.toStringAsPrecision(precision)).toString();

    try {
      if (unreadableNum == 0) {
        return '0';
      } else if (unreadableNum < 1000) {
        return getStringAsTrimmedPrecision(unreadableNum,precision: 1);
      } else if (unreadableNum < 100000) {
        return "${getStringAsTrimmedPrecision(unreadableNum / 1000)}K";
      } else if (unreadableNum < 10000000) {
        return "${getStringAsTrimmedPrecision(unreadableNum / 100000)}L";
      } else if (unreadableNum < 10000000000) {
        return "${getStringAsTrimmedPrecision(unreadableNum / 10000000)}Cr";
      } else if (unreadableNum < 1000000000000) {
        return "${getStringAsTrimmedPrecision(unreadableNum / 10000000000)}K Cr";
      } else {
        return "${getStringAsTrimmedPrecision(unreadableNum / 1000000000000)}L Cr";
      }
    } catch (e) {
      rethrow;
    }
  }
}
