
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: isColor==null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3,),
        const SizedBox(height: 5 ,),
        Text(secondText,
          style: isColor==null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4,),

      ],
    );
  }
}
