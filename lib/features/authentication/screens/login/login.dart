import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  height: 150,
                ),
                Text(TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(
                  height: TSizes.sm,
                ),
                Text(TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: TSizes.spaceBtwSections),
                    child: Column(
                      children: [
                        //emil
                        TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.direct_right),
                              labelText: TTexts.email),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields / 2,
                        ),
                        //Remember me & forget password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //re
                            Row(
                              children: [
                                Checkbox(value: true, onChanged: (value) {}),
                                const Text(TTexts.rememberMe),
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(TTexts.forgetPassword))
                          ],
                        ),
                        // const SizedBox(
                        //   height: TSizes.spaceBtwSections,
                        // ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(TTexts.signIn),
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text(TTexts.createAccount))),
                      ],
                    ),
                  ),
                ),
                //divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: dark ? TColors.darkGray : TColors.grey,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      TTexts.orSignInWith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Flexible(
                      child: Divider(
                        color: dark ? TColors.darkGray : TColors.grey,
                        thickness: 0.5,
                        indent: 5,
                        endIndent: 60,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Image(image: AssetImage(TImages.google))),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
