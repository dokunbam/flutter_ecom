import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        height: 150,
      ),
      Text(TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(
        height: TSizes.sm,
      ),
      Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}
