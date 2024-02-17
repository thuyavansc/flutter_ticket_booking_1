
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/column_layout.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40 ,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),

                  )
                ),
              ),
              const SizedBox(width: 10 ,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: AppStyles.headLineStyle1,),
                  const SizedBox(width: 2 ,),
                  Text('New-York', style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  const SizedBox(height: 10 ,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFef4f3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white, size: 15,),
                        ),
                        const SizedBox(width: 5 ,),
                        const Text('Premium status', style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600
                        ),),
                        const SizedBox(width: 5 ,),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){ print('you clicked Edit');},
                    child: Text('Edit', style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor, fontWeight: FontWeight.w300),)),
                ],
              ),

            ],
          ),
          const SizedBox(height: 8 ,),
          Divider(color: Colors.grey.shade300,),
          const SizedBox(height: 8 ,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264cd2))
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: AppStyles.primaryColor, size: 27,),
                    ),
                    const SizedBox(width: 12 ,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'you\'v got a new award',
                          style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
          const SizedBox(height: 25 ,),
          Text('Accumulated miles', style: AppStyles.headLineStyle2,),
          const SizedBox(height: 15 ,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 5,
                  spreadRadius: 5,
                )
              ]
            ),
            child: Column(
              children: [
                const SizedBox(height: 15 ,),
                Text(
                '192882',
                style: TextStyle(
                  fontSize: 45, color: AppStyles.textColor, fontWeight: FontWeight.w600
                ),
              ),
                const SizedBox(height: 20 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued', style: AppStyles.headLineStyle4.copyWith(fontSize: 16),),
                    Text('11 June 2022', style: AppStyles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                const SizedBox(height: 5 ,),
                Divider(color: Colors.grey.shade300,),
                const SizedBox(height: 5 ,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),
                  ],
                ),
                const SizedBox(height: 10 ,),
                const AppLayoutBuilderWidget(sections: 12, width: 5, height: 2, isColor: true,),
                const SizedBox(height: 10 ,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: 'McDonal\'s', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),
                  ],
                ),
                const SizedBox(height: 10 ,),
                const AppLayoutBuilderWidget(sections: 12, width: 5, height: 2, isColor: true,),
                const SizedBox(height: 10 ,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: 'Bestech', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),
                  ],
                ),

              ]
            ),
          ),
          const SizedBox(height: 15 ,),
          InkWell(
            onTap: (){ print('you clicked'); },
            child: Center(
              child: Text(
                'How to get more miles',
                style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor,fontWeight: FontWeight.w500),
              ),
            ),
          )

        ],
      ),
    );
  }
}
