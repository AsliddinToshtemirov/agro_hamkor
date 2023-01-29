import 'package:agro_hamkor/constants/colors.dart';
import 'package:agro_hamkor/style/size_utils.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get fillGreenA400cc => BoxDecoration(
        color: ColorConstant.greenA400Cc,
      );
  static BoxDecoration get fillDeeporange300 => BoxDecoration(
        color: ColorConstant.deepOrange300,
      );
  static BoxDecoration get fillOrangeA200 => BoxDecoration(
        color: ColorConstant.orangeA200,
      );
  static BoxDecoration get outlineBlack9007f => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black9007f,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineBlack90090 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black90090,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              15,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35.00,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius customBorderBL30 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );
}
