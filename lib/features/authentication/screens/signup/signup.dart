import 'package:ecommerce/features/authentication/screens/forms/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/forms/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TSignupForm(dark: dark),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            const TSocialButtons()
          ],
        ),
      )),
    );
  }
}
