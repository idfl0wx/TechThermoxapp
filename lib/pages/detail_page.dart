import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techthermoxapp/cubit/app_cubits.dart';
import 'package:techthermoxapp/misc/colors.dart';
import 'package:techthermoxapp/widgets/app_button.dart';
import 'package:techthermoxapp/widgets/button.dart';
import 'package:techthermoxapp/widgets/large_text.dart';
import 'package:techthermoxapp/widgets/text_app.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0.5,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/large.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<AppCubits>(context).goHome();
                    },
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LargeText(
                          text: "TechThermox Bundle",
                          color: Colors.black.withOpacity(0.8),
                          size: 25,
                        ),
                        LargeText(text: "\€27.99", color: AppColors.mainColor)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor
                                    : AppColors.textColor2);
                          }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(text: "(4)", color: AppColors.textColor2),
                      ],
                    ),
                    SizedBox(height: 25),
                    LargeText(
                      text: "Product quantity",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    AppText(
                        text: "Number of products you want to buy",
                        color: AppColors.mainTextColor),
                    SizedBox(height: 10),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              isIcon: false,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),
                    LargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 25,
                    ),
                    SizedBox(height: 5),
                    AppText(
                        text:
                            "The TechThermox is used to know the temperature of your room, with its small design as well as its shock resistance thanks to PLA. You can place it wherever you want. It offers optimum temperature accuracy thanks to its latest range sensor and precise temperature measurement, followed by an indentation temperature sensor with faster-than-light contact reception! Choose for the TechThermox now!.",
                        color: AppColors.mainTextColor,
                        size: 13),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                      size: 60,
                      color: AppColors.textColor1,
                      backgroundColor: Colors.white,
                      borderColor: AppColors.textColor1,
                      isIcon: true,
                      icon: Icons.favorite_border),
                  SizedBox(width: 20),
                  button(
                    isResponsive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
