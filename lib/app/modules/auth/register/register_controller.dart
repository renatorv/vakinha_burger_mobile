import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/mixins/loader_mixin.dart';
import 'package:vakinha_burger_mobile/app/core/mixins/messages_mixin.dart';
import 'package:vakinha_burger_mobile/app/repositories/auth/auth_repository.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  RegisterController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final loading = false.obs;
  final message = Rxn<MessageModel>();
  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }

  void qq() {
    message.value = MessageModel(
      title: 'Teste',
      message: 'Msg Teste',
      type: MessageType.error,
    );
    //ou
    // message(
    //   MessageModel(
    //     title: 'Teste',
    //     message: 'Msg Teste',
    //     type: MessageType.error,
    //   ),
    // );
    /***********************/
    ///
    ///
    // loading.toggle();
    // Future.delayed(
    //   Duration(seconds: 2),
    //   () => loading.toggle(),
    // );
  }
}
