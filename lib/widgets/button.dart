import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techthermoxapp/color/colors.dart';
import 'package:techthermoxapp/widgets/text_app.dart';

class button extends StatelessWidget {
  bool? isResponsive;
  double? width;
  button({Key? key, this.width = 120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(text: "Purchase now!", color: Colors.white))
                : Container(),
            Image.asset(
              'assets/button.png',
              //width: 80,
              //height: 1200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
