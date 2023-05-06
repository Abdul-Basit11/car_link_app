import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onTapped;

  const SettingTile(
      {super.key,
      required this.title,
      required this.iconData,
      required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapped,
      minLeadingWidth: 2,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        iconData,
        color: AppColors.kBlackColor,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.kBlackColor,
        size: 20,
      ),
    );
  }
}
