import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/rest_client/rest_client.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    //Aqui deve-se colocar tudo o que for utilizado por toda a aplicação
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );
  }
}
