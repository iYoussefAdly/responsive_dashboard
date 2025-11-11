import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
abstract class AppStyles {
  static TextStyle styleRegular16(context){
  return TextStyle(
    fontSize: getResponsive(context,fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color: Color(0xff064061),
  );
  }
  static TextStyle styleMedium16(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: const Color(0xff064061),
  );
}
static TextStyle styleSemiBold16(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: const Color(0xff064061),
  );
}
static TextStyle styleSemiBold20(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: const Color(0xff064061),
  );
}
static TextStyle styleRegular12(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color: const Color(0xffA7A7A7),
  );
}
static TextStyle styleSemiBold24(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: const Color(0xff4CB2EB),
  );
}
static TextStyle styleRegular14(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    color: const Color(0xffA7A7A7),
  );
}
static TextStyle styleSemiBold18(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: const Color(0xffF8F8F8),
  );
}
static TextStyle styleBold16(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    color: const Color(0xff4CB3ED),
  );
}
static TextStyle styleMedium20(BuildContext context) {
  return TextStyle(
    fontSize: getResponsive(context, fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: const Color(0xffF8F8F8),
  );
}
}

double getResponsive(context,{required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;
  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var physicalWidth =
  //     PlatformDispatcher.instance.views.first.physicalSize.width;
  // var devicePixelRation =
  //     PlatformDispatcher.instance.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRation;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 550;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
