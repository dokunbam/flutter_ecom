import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TFormatter {
  String formatDate(DateTime? date) {
    date ??= DateTime.now(); // Corrected syntax for null-coalescing assignment.
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // remove any non-digit character from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Assuming the first two digits are the country code.
    // For a real-world application, you would need a more robust way to determine the country code.
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      // Define the group length
      int groupLength;
      // Check if the country code is +1 for North American Numbering Plan
      // and adjust the first group length accordingly
      if (i == 0 && countryCode == '+1') {
        groupLength = 3; // area code
      } else {
        groupLength = i == 0 ? 3 : 2; // subsequent groups after area code
      }

      // Get the end position for the substring
      int end = i + groupLength > digitsOnly.length
          ? digitsOnly.length
          : i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      // Add space after each group except the last one
      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end; // Move the index to the end of the last group
    }

    // Return the formatted number as a string
    return formattedNumber.toString();
  }
}
