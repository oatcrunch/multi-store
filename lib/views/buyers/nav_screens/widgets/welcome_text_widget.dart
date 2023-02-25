import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Howdy,What Are You\n Looking For',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: SvgPicture.asset(
            'assets/icons/cart.svg',
            width: 20,
          ),
        )
      ],
    );
  }
}
