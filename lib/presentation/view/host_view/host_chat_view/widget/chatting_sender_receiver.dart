import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:flutter/material.dart';

class ChattingSenderReceiver extends StatelessWidget {
  final bool sendByMe;

  const ChattingSenderReceiver({super.key, required this.sendByMe});

  @override
  Widget build(BuildContext context) {
    if (sendByMe) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [


                  Expanded(
                      child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            AppColors.kBlackColor,
                            AppColors.kPrimaryColor,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                    child: Text(
                      'Hello How Are You !',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundImage:
                    AssetImage('asset/images/profileImage.png'),
                  ),
                  SizedBox(width: 8,),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('asset/images/profileImage.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                        color: AppColors.kGreyColor,
                        borderRadius: BorderRadius.circular(20),
                        ),
                    child: Text(
                      'Name cbsebfaisfi hjvauvfuaug av',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  )),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      );
    }
  }
}
