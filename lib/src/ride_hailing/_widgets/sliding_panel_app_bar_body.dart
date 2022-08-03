import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_widgets/_text_inputs/primary_text_input.dart';

class SlidingPanelAppBarBody extends StatelessWidget {
  const SlidingPanelAppBarBody({
    Key? key,
    required this.pickUpLocationTextEditingController,
    required this.dropOffLocationTextEditingController,
    required this.pickUpInputFocusNode,
    required this.dropOffInputFocusNode,
    required this.pickUpInputOnchage,
    required this.dropOffInputOnchage,
  }) : super(key: key);

  final TextEditingController pickUpLocationTextEditingController;
  final TextEditingController dropOffLocationTextEditingController;
  final FocusNode pickUpInputFocusNode;
  final FocusNode dropOffInputFocusNode;
  final VoidCallback pickUpInputOnchage;
  final VoidCallback dropOffInputOnchage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, top: 20),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green[900],
                radius: 9,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 3,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                width: 2,
                height: 32,
                color: kPrimaryFormFieldColor,
              ),
              const SizedBox(height: 4),
              const CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 9,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 3,
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  PrimaryTextInput(
                    controller: pickUpLocationTextEditingController,
                    textInputAction: TextInputAction.search,
                    focusNode: pickUpInputFocusNode,
                    hintText: 'Pick-up Location',
                    keyboardType: TextInputType.text,
                    fillColor: kPrimaryCardColor,
                    onChange: (_) => pickUpInputOnchage(),
                  ),
                  const SizedBox(height: 10),
                  PrimaryTextInput(
                    controller: dropOffLocationTextEditingController,
                    textInputAction: TextInputAction.search,
                    focusNode: dropOffInputFocusNode,
                    hintText: 'Drop Location',
                    keyboardType: TextInputType.text,
                    fillColor: kPrimaryCardColor,
                    onChange: (_) => dropOffInputOnchage(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
