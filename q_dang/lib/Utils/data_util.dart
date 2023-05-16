class DataUtil {
  static String DateTimetoStringDate(DateTime dateTime) {
    String res = "";
    res += dateTime.year.toString();
    res += "/";
    res += getTimeFormat(dateTime.month);
    res += "/";
    res += getTimeFormat(dateTime.day);
    return res;
  }

  static String DateTimetoString(DateTime dateTime) {
    String res = "";
    if (dateTime.hour > 12) {
      res += "오후 ";
      res += (dateTime.hour - 12).toString();
    } else if (dateTime.hour == 12) {
      res += "오후 ";
      res += dateTime.hour.toString();
    } else {
      res += "오전 ";
      res += getTimeFormat(dateTime.hour);
    }
    res += ": ";
    res += getTimeFormat(dateTime.minute);

    return res;
  }

  static String getTimeFormat(int number) {
    return number.toString().padLeft(2, '0');
  }
}
