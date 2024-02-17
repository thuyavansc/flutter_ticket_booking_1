import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/column_layout.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/thick_container.dart';

import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: 181,
      child: Container(
        margin: EdgeInsets.only(left: isColor==null ? 16 : 0),
        child: Column(
          children: [
            //Showing Blue Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor==null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null ? AppStyles.headLineStyle3.copyWith(color: Colors.white,) : AppStyles.headLineStyle3,),
                      const Spacer(),
                      const ThickContainer(isColor: true,),
                      //const Spacer(),
                      Expanded(
                          child: Stack(
                            children:[
                              SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(sections: 6, isColor: isColor,),
                            ),
                              Center(child: Transform.rotate(angle:1.5, child: Icon(Icons.flight, color: isColor==null ? Colors.white : const Color(0xFF8accf7),))),
                            ]
                          ),
                      ),
                      const ThickContainer(isColor: true,),
                      const Spacer(),
                      Text(ticket['to']['code'], style: isColor==null ? AppStyles.headLineStyle3.copyWith(color: Colors.white,) : AppStyles.headLineStyle3,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'], style: isColor==null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4,),
                      ),
                      Text(ticket['flying_time'], style: isColor==null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3,),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'], style: isColor==null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4, textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //showing Middle split red Card
            Container(
              color: isColor==null ? AppStyles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: isColor==null ? Colors.white : Colors.grey.shade200,
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor==null ? Colors.white : Colors.grey.shade300,
                              ),
                            ),
                          )),
                        );
                      },

                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: isColor==null ? Colors.white : Colors.grey.shade300,
                      ),
                    ),
                  )
                ],
              ),

            ),
            //Showing red card
            Container(
              decoration: BoxDecoration(
                color: isColor==null ? AppStyles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null ? 21 : 0),
                  bottomRight: Radius.circular(isColor==null ? 21 : 0),
                ),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: ticket['date'],
                      secondText:  'Date',
                      alignment: CrossAxisAlignment.start,
                      isColor: isColor,
                    ),
                    AppColumnLayout(
                      firstText: ticket['departure_time'],
                      secondText:  'Departure time',
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor,
                    ),
                    AppColumnLayout(
                      firstText: ticket['number'].toString(),
                      secondText:  'Number',
                      alignment: CrossAxisAlignment.end,
                      isColor: isColor,
                    ),

                  ],
                )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 6 PM, thellipalai -saturday
//sunday morning 7-Am