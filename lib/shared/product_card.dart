import 'package:e_commmercal/styles/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final double cardHeight = 260;
  final double cardWidth = 157;
  final double imageHeigth = 180;
  final double buttonSize = 36;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 260,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/product_image_0.png"
              ""),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 40,
              height: 24,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                "20%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w700),
              ),
            ),
            top: 10,
            left: 10,
          ),
          Positioned(
              top: imageHeigth,
              child: Container(
                color: Colors.white,
                height: 80,
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    _buildRating(),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Dorothy Perkins",
                      style: TextStyle(
                          fontSize: 11, color: AppColors.greyTextColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Evening Dress",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    _buildPriceWidget()
                  ],
                ),
              )),
          Positioned(
              right: -13,
              top: imageHeigth - buttonSize / 2 - 5,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(buttonSize, buttonSize),
                  shape: CircleBorder(
                    side: BorderSide.none,
                  ),
                  backgroundColor: Colors.white,
                ),
                child: Image.asset("assets/images/favorite_icon.png"),
              ))
        ],
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [1, 2, 3, 4, 5]
          .map((e) => Padding(
                padding: EdgeInsets.only(left: 3),
                child: SvgPicture.asset("assets/images/activated_start.svg"),
              ))
          .toList(),
    );
  }

  Widget _buildPriceWidget() {
    return Row(
      children: [
        Text(
          "15\$",
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              decorationThickness: 6.0,
              decorationColor: AppColors.greyTextColor,
              color: AppColors.greyTextColor),
        )
      ],
    );
  }
}
