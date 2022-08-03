import 'package:flutter/material.dart';
import 'package:parcel_it_app/src/core/_styles/colors.dart';
import 'package:shimmer/shimmer.dart';

class LoadingList extends StatelessWidget {
  const LoadingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Shimmer.fromColors(
        baseColor: kPrimaryFormFieldColor,
        highlightColor: kTertiaryColor,
        child: Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: kPrimaryFormFieldColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: kPrimaryFormFieldColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: kPrimaryFormFieldColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
