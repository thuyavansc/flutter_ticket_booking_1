
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/ticket_tabs.dart';

import '../../widgets/double_text_widget.dart';
import '../../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
        children: [
          const SizedBox(height: 40 ,),
          Text('What are\n you looking for ?', style: AppStyles.headLineStyle1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          const AppTicketTabs(firstTab: 'Airline tickets', secondTab: 'Hotels'),
          const SizedBox(height: 25 ,),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure',),
          const SizedBox(height: 15,),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival',),
          const SizedBox(height: 25,),
          Container(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xD91130CE),
                ),
                child: Center(child: Text('find tickets', style: AppStyles.textStyle.copyWith(color: Colors.white, fontSize: 20),)),
              ),
          const SizedBox(height: 30,),
          const AppDoubleTextWidget(bigText: 'Upcoming flights', smallText: 'view all'),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 400,
                width: size.width*0.42,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/sit.jpg'),
                      ),
                    )
                    ),
                    const SizedBox(height: 12,),
                    Text('20% discount on early booking of this flight. Dont\'s miss out this chance ',
                    style: AppStyles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(18)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey', style: AppStyles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white ),),
                            const SizedBox(height: 10,),
                            Text('Take the survey about our services and get discount', style: AppStyles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white , fontSize: 18),),
                            const SizedBox(height: 10,),

                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color:const Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      )
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width*0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFec6545),
                    ),
                    child: Column(
                      children: [
                        Text('Take love', style: AppStyles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        const SizedBox(height: 5,),
                        RichText(text: const TextSpan(children: [
                          TextSpan(
                            text: '😀',
                            style: TextStyle(fontSize: 30),
                          ),TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 50),
                          ),TextSpan(
                            text: '🤩',
                            style: TextStyle(fontSize: 30),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ]
      )
    );
  }
}
