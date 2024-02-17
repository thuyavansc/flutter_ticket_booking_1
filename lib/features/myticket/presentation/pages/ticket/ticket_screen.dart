
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_info_list.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/cards/ticket_view.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/ticket_tabs.dart';

import '../../widgets/column_layout.dart';
import '../../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              const SizedBox(height: 40 ,),
              Text('Tickets', style: AppStyles.headLineStyle1,),
              const SizedBox(height: 25 ,),
              const AppTicketTabs(firstTab: 'Upcomming', secondTab: 'Previous'),
              const SizedBox(height: 25 ,),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.only(left: 16),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: '5221 364869', secondText: 'Passport',alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    const SizedBox(height: 10 ,),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5, height: 2,),
                    const SizedBox(height: 10 ,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: '364738 2485965', secondText: 'Number of E-tickets', alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: 'B2SG2G8', secondText: 'Booking code',alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    const SizedBox(height: 10 ,),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5, height: 2,),
                    const SizedBox(height: 10 ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png', scale: 11,),
                                Text('*** 2462', style: AppStyles.headLineStyle3,),
                              ],

                            ),
                            const SizedBox(height: 5 ,),
                            Text('Payment method', style: AppStyles.headLineStyle4,),

                          ],
                        ),
                        const AppColumnLayout(firstText: '\$249.99', secondText: 'Price',alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    const SizedBox(height: 10 ,),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5, height: 2,),
                    const SizedBox(height: 10 ,),

                  ],
                ),
              ),

            ],
        ),
      ]
      ),
    );
  }
}
