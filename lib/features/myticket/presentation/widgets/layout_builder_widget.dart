
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  final double height;
  const AppLayoutBuilderWidget({super.key, this.isColor, required this.sections, this.width = 3, this.height = 1});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        print('Width  $constraints');
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth()/sections).floor(),
                (index) => SizedBox( width: width, height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor==null ? Colors.white : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );

      },
    );
  }
}
