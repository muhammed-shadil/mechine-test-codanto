import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mechine_test_codanto/utils/constants.dart';

class MainTextfield extends StatelessWidget {
  const MainTextfield(
      {super.key,
      required this.suffixIcon,
      required this.hinttext,
      required this.namefield,
      required this.keyboard,
      required this.validator,
      this.controller});
  final IconData? suffixIcon;
  final String hinttext;
  final String namefield;
  final TextInputType keyboard;
  final TextEditingController? controller;
  final String? Function(dynamic value) validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(namefield),
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp(r'\s')),
            ],
            controller: controller,
            validator: validator,
            keyboardType: keyboard,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              errorMaxLines: 3,
              contentPadding: const EdgeInsets.all(10),
              hintText: hinttext,
              hintStyle: styles.textfieldstyle,
              suffixIcon: Icon(
                size: 15,
                suffixIcon,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
              fillColor: Constants.fillcolor,
              filled: true,
            ),
          )
        ],
      ),
    );
  }
}
