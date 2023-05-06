import 'package:flutter/material.dart';

import '../../congiguration/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? validator;
  bool obsecureText;
  bool isPasswordField;
  final IconData? prefixIcon;
  final IconData? suffixicon;
  final TextAlign? textAlign;
  final TextInputType? textInputType;
  final int? maxline;
  final bool isPrefixIcon;
  final VoidCallback? onTapped;

  CustomTextField({
    super.key,
    required this.hintText,
    this.suffixicon,
    this.onTapped,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.obsecureText = false,
    this.isPasswordField = false,
    this.textAlign,
    this.textInputType,
    this.maxline = 1,
    this.isPrefixIcon = false,
  });

  @override
  State<CustomTextField> createState() => _CuctomTextFieldState();
}

class _CuctomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTapped,
      cursorColor: AppColors.kPrimaryColor,
      maxLines: widget.maxline ?? 1,
      keyboardType: widget.textInputType ?? TextInputType.text,
      textAlign: widget.textAlign ?? TextAlign.start,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(color: AppColors.kBlackColor),
      controller: widget.controller,
      validator: (val) => widget.validator!(val!),
      obscureText: widget.obsecureText,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AppColors.kGreyColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.grey.shade600,fontSize: 13),
        prefixIcon: widget.isPrefixIcon ? Icon(widget.prefixIcon,color: AppColors.kPrimaryColor,) : null,
        suffixIcon: widget.isPasswordField
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    widget.obsecureText = !widget.obsecureText;
                  });
                },
                child: Icon(
                  widget.obsecureText ? Icons.visibility_off : Icons.visibility,
                  size: 18,
                  color: Colors.white.withOpacity(0.4),
                ))
            : Icon(widget.suffixicon),
      ),
    );
  }
}
