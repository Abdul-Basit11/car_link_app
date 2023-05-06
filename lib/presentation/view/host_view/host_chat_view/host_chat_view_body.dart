import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import 'widget/chatting_sender_receiver.dart';

class HostChatViewBody extends StatelessWidget {
  const HostChatViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    ChattingSenderReceiver(
                      sendByMe: true,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: true,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: false,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: true,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: true,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: false,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: true,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: true,
                    ),
                    ChattingSenderReceiver(
                      sendByMe: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration:BoxDecoration(color: AppColors.kWhiteColor, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 15,
                    spreadRadius: 1),
              ]),
              child: Row(
                children: [
                  Expanded(child:
              TextFormField(
                cursorColor: AppColors.kPrimaryColor,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.kBlackColor),
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: AppColors.kGreyColor,

                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: 'Type Something...',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.grey.shade600,fontSize: 13),

                ),
              ),


                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      color: AppColors.kGreyColor,

                        shape: BoxShape.circle
                    ),
                    child: FittedBox(
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.camera_alt,color: AppColors.kBlackColor,),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      color: AppColors.kGreyColor,
                      shape: BoxShape.circle
                    ),
                    child: FittedBox(
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.keyboard_voice_outlined,color: AppColors.kBlackColor,),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(Icons.more_vert_outlined),
        )
      ],
      leadingWidth: 20,
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: const Icon(Icons.arrow_back),
          )),
      title: Row(

        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('asset/images/profileImage.png'))),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 12,
                width: 12,
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Felix Jones',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,fontSize: 15
                ),
              ),
              Text(
                'Active now',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.grey
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
