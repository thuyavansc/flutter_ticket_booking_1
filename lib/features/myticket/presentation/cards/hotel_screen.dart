
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print('Hotel price is : ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5,),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/${hotel['image']}'),
                fit: BoxFit.cover,
              )
            ),

          ),
          const SizedBox(height: 10,),
          Text(
            '${hotel['place']}',
            style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
          ),
          const SizedBox(height: 8,),
          Text(
            '${hotel['destination']}',
            style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 5,),
          Text(
            '${hotel['price']}K / night',
            style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),
          ),
        ],
      ),
    );
  }
}