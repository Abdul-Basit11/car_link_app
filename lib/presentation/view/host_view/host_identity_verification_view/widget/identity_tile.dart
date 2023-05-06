import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';

class IdentityTile extends StatelessWidget {
  final String title;
  final String subTitle;

  const IdentityTile({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.insert_drive_file_rounded,
            color: Colors.black,
          ),
          title: Text(title,style:  Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 17,fontWeight: FontWeight.bold
              ),),
          subtitle: Text(
            subTitle,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 17,fontWeight: FontWeight.bold
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Divider(
            thickness: 0.2,
            color: AppColors.kBlackColor,
          ),
        ),
      ],
    );
  }
}
