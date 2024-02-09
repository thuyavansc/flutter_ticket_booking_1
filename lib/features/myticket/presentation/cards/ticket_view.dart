import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //Showing Blue card
                  Row(
                    children: [
                      Text('NYC', style: AppStyles.headLineStyle3.copyWith(color: Colors.white,),),
                      const Spacer(),
                      const ThickContainer(),
                      //const Spacer(),
                      Expanded(
                          child: Stack(
                            children:[
                              SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints){
                                  print('Width  $constraints');
                                  return Flex(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                    children: List.generate(
                                      (constraints.constrainWidth()/6).floor(),
                                      (index) => const SizedBox( width: 3, height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),),
                                      ),
                                    ),
                                  );

                                },
                              ),
                            ),
                              Center(child: Transform.rotate(angle:1.5, child: const Icon(Icons.flight, color: Colors.white,))),
                            ]
                          ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text('LON', style: AppStyles.headLineStyle3.copyWith(color: Colors.white,),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('New-York', style: AppStyles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text('8H 30M', style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100,
                        child: Text('London', style: AppStyles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 6 PM, thellipalai -saturday
//sunday morning 7-Am