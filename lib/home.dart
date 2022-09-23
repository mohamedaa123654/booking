import 'package:booking/core/componant.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyCard(
            imageURL:
                'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
            distance: '70 km to city',
            hotelName: 'Queen Hotel',
            location: 'Wembley, London',
            price: '60',
            rate: 4.5,
          ),
          // OnboardingItem(
          //     image: 'assets/images/onboarding_logo1.png',
          //     title: 'Plan Your Trips',
          //     subTitle: 'book one of your unique hotel to escape theordinary')
        ],
      ),
    );
  }
}
