
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';

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
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  //Airline tickets
                  Container(
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Airline tickets')),

                  ),
                  //Hotels
                  Container(
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text('Hotels')),

                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 25 ,),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure',),
          const SizedBox(height: 15,),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure',),
          const SizedBox(height: 25,),
          Container(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xD91130CE),
                ),
                child: Center(child: Text('find tickets', style: AppStyles.textStyle.copyWith(color: Colors.white, fontSize: 20),)),
              ),

        ],
      ),
    );
  }
}
