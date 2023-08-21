
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

///
/// This class is used to log any wanted message to console with pretty view
/// easy to monitor app log data
/// Only log for the debugging mode
///
/// Use [kEZLogger] as an instance of [Logger]
/// Use [kEZLog] as an instance of this class, can be use to log a normal message
/// Or use to log for API request and response by using [apiLogRequest] and
/// [apiLogResponse]
///

final EZLog kEZLog = EZLog();
final Logger kEZLogger = EZLog().logger;

class EZLog {
  static final EZLog _instance = EZLog._internal();

  factory EZLog() {
    return _instance;
  }

  EZLog._internal();

  static const _functionNamePosition = 6;
  static const _functionPosition = 2;

  /// Create a new instance of Logger.
  ///
  /// Customize configs needed
  ///
  final logger = Logger(
    printer: PrettyPrinter(
        methodCount: 1, // Number of method calls to be displayed
        errorMethodCount: 5, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
    ),
    filter: null, // Use the default LogFilter (-> only log in debug mode)
  );

  void log(String str) {
    var functionName = _functionNameAt(_functionPosition);
    if (kDebugMode) {
      print('$functionName[${DateTime.now().toIso8601String()}] : ${str.trim()}');
    }
  }

  String _functionNameAt(int order) {
    var currentStack = StackTrace.current.toString();
    var arrayStack = currentStack.split('\n');
    List<String> arrayDetail;
    String functionName = '';

    if (arrayStack.length > order){
      arrayDetail = arrayStack[order].split(' ');
      if (arrayDetail.length > _functionNamePosition) {
        functionName = arrayDetail[_functionNamePosition];
      }
    }
    return functionName;
  }

  void apiLogRequest(
      String request,
      String headers,
      {String method = 'N/A',
        required String queryParams,
        String body = '',
  }) {
    var functionName = _functionNameAt(2);
    String str =
        '\n$functionName ►►►'
        '\n${DateTime.now().toIso8601String()}'
        '\n☀️☀️☀️☀️☀️REQUEST'
        '\n($method) $request'
        '\nHeaders: $headers'
        '\nQueryParams: $queryParams'
        '\nBody: $body'
        '\n-----------------------------------------------------------------------------------------------'
        '\n';
    printLongString(str);
  }

  void apiLogResponse(
      String request,
      String response,
      String code,
      {String method = 'N/A',
        String body = '',
  }){
    var functionName = _functionNameAt(2);
    String str =
        '\n$functionName ►►►'
        '\n${DateTime.now().toIso8601String()}'
        '\n💥💥💥💥💥RESPONSE'
        '\nReturn $code: ($method) $request'
        '\n${response.trim()}'
        '\n-----------------------------------------------------------------------------------------------'
        '\n';
    printLongString(str);
  }

  void printLongString(Object object) {
    if (kDebugMode) {
      // currently dart and flutter not supporting printing logs more than 1020 character.
      int defaultPrintLength = 1020;
      if (object.toString().length <= defaultPrintLength) {
        print(object);
      } else {
        String log = object.toString();
        int start = 0;
        int endIndex = defaultPrintLength;
        int logLength = log.length;
        int tmpLogLength = log.length;
        while (endIndex < logLength) {
          print(log.substring(start, endIndex));
          endIndex += defaultPrintLength;
          start += defaultPrintLength;
          tmpLogLength -= defaultPrintLength;
        }
        if (tmpLogLength > 0) {
          print(log.substring(start, logLength));
        }
      }
    }
  }
}
