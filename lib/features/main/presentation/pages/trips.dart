import 'package:booking/core/color_manager.dart';
import 'package:booking/core/componant.dart';
import 'package:flutter/material.dart';

class TripsPage extends StatelessWidget {
  TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
                left: 24,
              ),
              child: Text(
                'My Trip',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),

                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  labelColor: ColorManager.primary,
                  indicatorColor: Colors.transparent,
                  enableFeedback: true,
                  unselectedLabelColor: ColorManager.grey,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Finished',
                    ),
                    Tab(
                      text: 'Favorite',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
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
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
