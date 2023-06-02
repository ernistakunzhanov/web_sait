import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 394,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(38.55),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 38,
              vertical: 37,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Графикалык дизайн',
                      style: TextStyle(
                        fontSize: 19,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '10 000 c',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 19),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/time-circle.svg'),
                        const SizedBox(width: 5),
                        const Text(
                          '60 c.',
                          style: TextStyle(
                            fontSize: 15.42,
                            color: Color(0xff868686),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 39),
                        SvgPicture.asset('assets/icons/profile.svg'),
                        const SizedBox(width: 5),
                        const Text(
                          '20',
                          style: TextStyle(
                            fontSize: 15.42,
                            color: Color(0xff868686),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset('assets/images/cardImage.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
