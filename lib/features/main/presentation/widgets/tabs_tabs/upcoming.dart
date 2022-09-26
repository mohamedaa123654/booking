import 'package:booking/core/componant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              UpcomingCard(
                imageURL:
                    'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768s',
                distance: '70 km to city',
                hotelName: 'Queen Hotel',
                location: 'Wembley, London',
                price: '60',
                rate: 4.5,
                offerdate: '01 sep - 05 Sep, 1 Room 2 People',
                reviews: '90',
              ),
              SizedBox(
                height: 16,
              ),
            ],
          );
        });
  }
}
