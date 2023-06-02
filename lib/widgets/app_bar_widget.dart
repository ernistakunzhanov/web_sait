import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 100,
        right: 95,
        top: 17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Logo',
            style: TextStyle(
              fontSize: 43.36,
              color: Color(0xff000000),
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            width: 289,
            height: 42,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  left: 25,
                ),
                fillColor: const Color(0xff000000),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
                hintText: 'Издөө',
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              const Text(
                'Категориялар',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.arrow_right),
              ),
            ],
          ),
          const Text(
            'Менин курсум',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff000000),
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'Корзина',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff000000),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Text(
                  'КЫР',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff4224DB),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Color(0xff4224DB),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4224DB),
              fixedSize: Size(65, 41),
            ),
            child: const Center(
              child: Text(
                'KU',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
