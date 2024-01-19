import 'package:flutter/material.dart';
import 'package:flutter_advanced_omar_ahmed/core/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/helpers/paths.dart';

class ImageBackgroung extends StatelessWidget {
  const ImageBackgroung({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Paths.backgroundSvg),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(Paths.doctorImage),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlackBold.copyWith(height: 1.4),
          ),
        )
      ],
    );
  }
}
