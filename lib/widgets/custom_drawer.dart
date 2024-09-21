import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [],
      ),
    );
  }
}

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        image,
      ),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.styleRegular12,
      ),
    );
  }
}
