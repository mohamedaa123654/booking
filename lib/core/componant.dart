import 'color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//General Button For App
class DefaultButton extends StatelessWidget {
  VoidCallback? onPressed;
  String text;
  double? width;
  double? height;
  double? textSize;
  double radius;
  bool isUpperCase;
  Color? buttonColor;
  Color? textColor;

  DefaultButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.width = double.infinity,
      this.height,
      this.radius = 12.0,
      this.isUpperCase = false,
      this.buttonColor = ColorManager.primaryButtonColor,
      this.textColor = ColorManager.white,
      this.textSize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: buttonColor,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}

//General TextButton For App
class DefaultTextButton extends StatelessWidget {
  VoidCallback? function;
  String text;
  DefaultTextButton({Key? key, required this.function, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(color: ColorManager.primary),
      ),
    );
  }
}

//Navigat to Screen
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

//Navigat to Screen And Close old Screen
void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

class MyCard extends StatelessWidget {
  String imageURL;
  String hotelName;
  String location;
  String distance;
  String price;
  double rate;
  Color? backgrowndColor;

  MyCard(
      {required this.imageURL,
      required this.hotelName,
      required this.location,
      required this.distance,
      required this.price,
      required this.rate,
      this.backgrowndColor = Colors.white70});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: backgrowndColor),
        child: Row(children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            child: Image.network(
              imageURL,
              fit: BoxFit.cover,
              width: 120,
              height: 130,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      location,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_pin,
                              size: 16,
                              color: ColorManager.primary,
                            ),
                            Text(
                              distance,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        RatingBarIndicator(
                          direction: Axis.horizontal,
                          rating: rate,
                          itemSize: 18,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.only(right: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: ColorManager.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 32),
                    Column(
                      children: [
                        Text(
                          '\$$price',
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '/per night',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ExplorPageTitle extends StatelessWidget {
  ExplorPageTitle(
      {Key? key, required this.title, this.textColor = ColorManager.black})
      : super(key: key);
  String title;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 32,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              wordSpacing: 2,
              color: textColor!),
        ),
      ],
    );
  }
}

class PopularCitiesCard extends StatelessWidget {
  String imageURL;
  String cityName;

  PopularCitiesCard({
    required this.imageURL,
    required this.cityName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 150,
        transform: Matrix4.translationValues(0.0, 0.0, 0),
        padding: EdgeInsets.only(top: 40, left: 16, right: 16),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageURL), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Container(
              // padding: EdgeInsets.all(16),
              transform: Matrix4.translationValues(0.0, -20.0, 0),

              child: Text(
                cityName,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                    color: ColorManager.white),
              ),
            ),
          ],
        ));
  }
}
