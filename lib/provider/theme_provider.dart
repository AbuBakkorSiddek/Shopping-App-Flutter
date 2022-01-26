
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MyAppTheme{

  static ThemeData myTheme(bool isDark,BuildContext context){

    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
    );
  }
}


class  ThemeNotifire  with ChangeNotifier {

  late bool _isDark;

  bool get isDark => _isDark;

  ThemeNotifire(){
    _isDark=false;
    _loadfromPref();
    notifyListeners();

  }


  toggleTheme(bool value){

    _isDark=value;
    notifyListeners();
    _savePref();

  }


  _loadfromPref()async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDark = prefs.getBool('theme') ?? false;
    notifyListeners();
    return _isDark;
  }

  _savePref()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('theme', _isDark);
  }

}

