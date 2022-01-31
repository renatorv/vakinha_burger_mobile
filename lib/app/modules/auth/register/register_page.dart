import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textformfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(elevation: 0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cadastro',
                    style: context.textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.theme.primaryColorDark,
                    ),
                  ),
                  Text(
                    'Preencha os campos abaixo para criar o seu cadastro.',
                    style: context.textTheme.bodyText1?.copyWith(),
                  ),
                  const SizedBox(height: 30),
                  VakinhaTextformfield(label: 'Nome'),
                  const SizedBox(height: 30),
                  VakinhaTextformfield(label: 'E-mail'),
                  const SizedBox(height: 30),
                  VakinhaTextformfield(label: 'Senha'),
                  const SizedBox(height: 30),
                  VakinhaTextformfield(label: 'Confirma senha'),
                  const SizedBox(height: 30),
                  Center(
                    child: VakinhaButton(
                      label: 'CADASTRAR',
                      onPressed: () {},
                      width: context.width,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
