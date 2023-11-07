import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal() {
    final storage = GetStorage();
  }

//   //Generic method to save data
//   Futur<void> saveData<T>(String key, T Value) async{
//     \
//     /56'5+AWA
  
// return null;}
}
