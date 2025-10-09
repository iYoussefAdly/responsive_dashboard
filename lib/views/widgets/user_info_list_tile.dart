import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffF8F8F8),
      child: ListTile(
        leading: Image.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16),
        subtitle: Text(subtitle, style: AppStyles.styleMediium20.copyWith(color: Color(0xffA5A5A5))),
      ),
    );
  }
}
