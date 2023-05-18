import 'package:jiffy/src/enums/startOfWeek.dart';
import 'package:jiffy/src/locale/locale.dart';
import 'package:jiffy/src/locale/relativeTime.dart';

class ViLocale extends Locale {
  StartOfWeek strtOfWeek;
  ViLocale(this.strtOfWeek);

  @override
  String get code => 'vi_VN';

  @override
  List<String>? ordinals() =>
      List.from(['st', 'nd', 'rd', 'th'], growable: false);

  @override
  RelativeTime relativeTime() => ViVNRelativeTime();

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class ViVNRelativeTime extends RelativeTime {
  @override
  String aDay(int hours) => 'ngày';

  @override
  String aboutAMinute(int minutes) => 'phút';

  @override
  String aboutAMonth(int days) => 'tháng';

  @override
  String aboutAYear(int year) => 'năm';

  @override
  String aboutAnHour(int minutes) => 'giờ';

  @override
  String days(int days) => '$days ngày';

  @override
  String hours(int hours) => '$hours giờ';

  @override
  String lessThanOneMinute(int seconds) => 'một vài phút';

  @override
  String minutes(int minutes) => '$minutes phút';

  @override
  String months(int months) => '$months tháng';

  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => 'trong';

  @override
  String suffixAgo() => 'khoảng';

  @override
  String suffixFromNow() => '';

  @override
  String wordSeparator() => ' ';

  @override
  String years(int years) => '$years năm';
}
