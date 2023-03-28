import 'package:logger/logger.dart';

Log get lg => Log.getInstance();

class Log {
  static final _log = Log();

  static Log getInstance() {
    return _log;
  }

  Logger? logger;

  openLog() {
    logger = Logger(
        printer: PrettyPrinter(
            methodCount: 4,
            errorMethodCount: 8,
            lineLength: 300,
            colors: true,
            printEmojis: true,
            printTime: true));
  }

  i(dynamic message) {
    logger?.i(message);
  }

  v(dynamic message) {
    logger?.v(message);
  }

  e(dynamic message) {
    logger?.e(message);
  }

  d(dynamic message) {
    logger?.d(message);
  }

  w(dynamic message) {
    logger?.w(message);
  }

  log(Level level, dynamic message) {
    logger?.log(level, message);
  }
}
