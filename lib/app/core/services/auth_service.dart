
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vakinha_burger_mobile/app/core/constants/constants.dart';

/// O GetX entende que um service, NUNCA deve morrer
class AuthService extends GetxService {

  // 
  final isLogged = RxnBool();
  // Instância do GetStorage
  final _getStorage = GetStorage();

  void logout() => _getStorage.write(Constants.USER_KEY, null);
  
}

// DW - 2022 - Dia 3
// 40 minutos