
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              image: const DecorationImage(
                image: AssetImage('assets/images/one.png'),
                fit: BoxFit.cover,
              )
            ),

          ),
          const SizedBox(height: 10,),
          Text(
            'Open Space',
            style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
          ),
          const SizedBox(height: 8,),
          Text(
            'London',
            style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 5,),
          Text(
            '40K / night',
            style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),
          ),
        ],
      ),
    );
  }
}
