import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';

// ignore: must_be_immutable
class CustomTextFormfield extends StatefulWidget {
  final String hintText;
  final String labelText;
  final bool isPasswordTextField;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Function validator;
  final double height;
  bool obscureText;

  CustomTextFormfield.password(
      {this.hintText,
      this.labelText,
      this.isPasswordTextField = true,
      this.textInputAction,
      this.textInputType,
      this.controller,
      this.obscureText = true,
      this.validator,
      this.height});

  CustomTextFormfield.regular(
      {this.hintText,
      this.labelText,
      this.isPasswordTextField = false,
      this.textInputAction,
      this.textInputType,
      this.controller,
      this.obscureText = false,
      this.validator,
      this.height});

  @override
  _CustomTextFormfieldState createState() => _CustomTextFormfieldState();
}

class _CustomTextFormfieldState extends State<CustomTextFormfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: kSegoe.copyWith(fontSize: 15),
      controller: widget.controller,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: kSegoe,
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: kSegoe.copyWith(color: Colors.grey, fontSize: 15),
        suffixIcon: widget.isPasswordTextField
            ? IconButton(
                icon: widget.obscureText
                    ? Icon(Icons.visibility, color: Colors.white)
                    : Icon(Icons.visibility_off, color: Colors.white),
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
