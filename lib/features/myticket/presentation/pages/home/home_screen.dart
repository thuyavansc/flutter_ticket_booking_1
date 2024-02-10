import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_info_list.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/cards/ticket_view.dart';

import '../../cards/hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const SizedBox(height:40 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning',
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(height: 7,),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img_1.png'),
                          fit: BoxFit.cover,
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4f6fd),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search_outlined, color: Color(0xFFbfc205),),
                      Text(
                        'Search....',
                        style: AppStyles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming flights', style: AppStyles.headLineStyle2,),
                    InkWell(
                      child: Text('view all', style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),),
                      onTap:() { print('view all clicked'); },
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20,),
            child: Row(
              children: [
                TicketView(),
                TicketView(),
                TicketView(),
              ],
            ),

          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: AppStyles.headLineStyle2,),
                InkWell(
                  child: Text('view all', style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),),
                  onTap:() { print('view all clicked'); },
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
            ),
          ),

        ],
      ),
    );
  }
}
