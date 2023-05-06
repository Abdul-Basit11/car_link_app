import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RenterProfileViewBody extends StatelessWidget {
  const RenterProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: context.textTheme.titleMedium!
              .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              40.sH,
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('asset/images/profileImage.png'))),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.black.withOpacity(0.4))
                          ]),
                      child: Icon(
                        CupertinoIcons.pencil_circle_fill,
                        color: Colors.white,
                        size: 25,
                      )),
                ),
              ),
              20.sH,
              CustomTextField(hintText: 'John Wick'),
              10.sH,
              CustomTextField(hintText: 'johnwick@gmail.com'),
              10.sH,
              CustomTextField(hintText: '+9201212354'),

            ],
          ),
        ),
      ),
    );
  }
}
