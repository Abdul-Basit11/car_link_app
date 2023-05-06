import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static ThemeData myTheme(BuildContext context) {
    return ThemeData(

      appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      scaffoldBackgroundColor: AppColors.kWhiteColor,
      //colorSchemeSeed: AppColors.kPrimaryColor,
      useMaterial3: true,

      fontFamily: 'Myriad Pro',
      textTheme: Theme.of(context).textTheme.copyWith(

          /// 8 size
          bodySmall: TextStyle(fontFamily: 'Myriad Pro', fontSize: 8,fontWeight: FontWeight.w400),

          /// 10 size
          titleLarge: TextStyle(fontFamily: 'Myriad Pro',fontSize: 10,fontWeight: FontWeight.w400),

          /// 12 size
          labelMedium:
              TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Myriad Pro'),

          /// 14 size
          labelLarge: TextStyle(fontSize: 14, fontFamily: 'Myriad Pro',fontWeight: FontWeight.w600),

          /// 18
          titleMedium: TextStyle(fontFamily: 'Myriad Pro',fontSize: 18,fontWeight: FontWeight.w500)),

      // textTheme: GoogleFonts.poppinsTextTheme(
      //   Theme.of(context).textTheme.apply().copyWith(
      //
      //     /// 8 size
      //     bodySmall: TextStyle(fontSize: 10,color: AppColors.kBlackColor,fontWeight: FontWeight.w700),
      //     /// 10 size
      //     bodyMedium: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),
      //     /// 12 size
      //     labelMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
      //    /// 14 size
      //     labelLarge: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),
      //     /// 18 size
      //        titleMedium: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)
      //   ),
      // ),
    );
  }
}
extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
extension Space on num {
  SizedBox get sH => SizedBox(
    height: toDouble(),
  );
  SizedBox get sW => SizedBox(
    width: toDouble(),
  );
}
