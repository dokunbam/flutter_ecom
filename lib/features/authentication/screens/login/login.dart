import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screens/forms/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/forms/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
//import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                const TLoginHeader(),
                //form
                const TLoginForm(),
                //divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

                //divider

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///footer
                const TSocialButtons()
              ],
            )
          ],
        ),
      )),
    );
  }
}
