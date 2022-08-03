import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:parcel_it_app/src/core/_styles/font.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: kPrimaryCardColor.withOpacity(0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                child: Text(
                  'Payment',
                  style: kHeadingOneTextStyle.copyWith(fontSize: 22),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          shadowColor: kBlackColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8),
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 200,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: kPrimaryCardColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Balance',
                                  style: kParagraphTextStlye.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'NGN 0.00',
                                  style: kHeadingOneTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Top up your wallet',
                                  style: kParagraphTextStlye.copyWith(fontSize: 14),
                                ),
                                const SizedBox(height: 16),
                                Divider(
                                  height: 18,
                                  thickness: 1,
                                  color: kBlackColor.withOpacity(0.1),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Iconsax.money_add5,
                                      color: kPrimaryColor,
                                      size: 28,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Add Funds',
                                      style: kParagraphTextStlye.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Payment Methods',
                            style: kParagraphTextStlye.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          height: 18,
                          thickness: 1,
                          color: kBlackColor.withOpacity(0.1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/image_icons/cash.png',
                                    height: 28,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Cash',
                                    style: kParagraphTextStlye.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Radio(
                                value: '',
                                groupValue: '',
                                onChanged: (value) {},
                                activeColor: kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/image_icons/credit_card.png',
                                    height: 28,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Add Debit/ Credit Card',
                                    style: kParagraphTextStlye.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
