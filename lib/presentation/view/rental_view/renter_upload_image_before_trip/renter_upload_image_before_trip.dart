import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

class RenterUploadImageBeforeTripViewBody extends StatelessWidget {
  const RenterUploadImageBeforeTripViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.sH,
              Text(
                'Upload Picture (Before Trip)',
                style: context.textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                'Upload picture of the car before going on trip, it is necessary to upload picture of per existed damages',
                style: context.textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey.shade500),
              ),
              5.sH,
              Row(
                children: [
                  const Icon(
                    Icons.error,
                    color: Colors.grey,
                    size: 22,
                  ),
                  4.sW,
                  Text(
                    'Minimum 4 Pictures  are mandatory',
                    style: context.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey.shade500),
                  )
                ],
              ),
              10.sH,
              Wrap(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.30,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Card(
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.photo_camera_back,
                              color: AppColors.kGreyColor,
                              size: 30,
                            ),
                            10.sH,
                            Text(
                              'Add Photo',
                              style: context.textTheme.labelLarge!.copyWith(
                                  color: AppColors.kGreyColor, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  imageBoxes(context),
                  imageBoxes(context),
                  imageBoxes(context),
                  imageBoxes(context),
                  imageBoxes(context),
                  imageBoxes(context),
                  imageBoxes(context),
                  imageBoxes(context),
                ],
              ),
              70.sH,
              CustomButton(buttonText: 'Save and Go', onTapped: () {}),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox imageBoxes(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.30,
      width: MediaQuery.of(context).size.width * 0.30,
      child: Card(
        color: Colors.grey,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'asset/images/m3.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
