import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/assets_data.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.icon,
    this.iconBackground,
    this.imageColor,
    this.arrowColor,
  });
  final String icon;
  final Color? iconBackground, imageColor, arrowColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: iconBackground ?? Color(0xffF0F0F0),
                  shape: BoxShape.circle,
                ),
                child: icon == AssetsData.imagesBalance
                    ? Center(
                        child: SvgPicture.asset(
                          icon,
                          colorFilter: ColorFilter.mode(
                            imageColor ?? Color(0xff4CB1EA),
                            BlendMode.srcIn,
                          ),
                        ),
                      )
                    : Center(
                        child: Image.asset(
                          icon,
                          color: imageColor ?? Color(0xff4CB1EA),
                        ),
                      ),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: arrowColor ?? Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
