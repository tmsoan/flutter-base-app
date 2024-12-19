
/// A singleton class to be defined and saved global variables needed for
/// current app session.
/// DO NOT use to save large data
///
class AppSession {
  static final AppSession _instance = AppSession._internal();

  factory AppSession() {
    return _instance;
  }

  AppSession._internal() {
    // initial stuffs...
    counter++;
  }

  // ex: to be defined some flags...
  var counter = 0;
}