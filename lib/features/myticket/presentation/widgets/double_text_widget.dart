
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2,),
        InkWell(
          child: Text(smallText, style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),),
          onTap:() { print('view all clicked'); },
        )
      ],
    );
  }
}
