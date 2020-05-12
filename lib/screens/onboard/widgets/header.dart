import 'package:flutter/material.dart';
import 'package:onboard_ui/common/constants.dart';
import 'package:onboard_ui/widgets/logo.dart';

class Header extends StatelessWidget {
  final VoidCallback onSkip;
  const Header({@required this.onSkip}) : assert(onSkip != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Logo(color: DWhite, size: 32.0),
        GestureDetector(
          onTap: onSkip,
          child: Text('Skip',
            style: Theme.of(context).textTheme.subtitle1.copyWith(color: DWhite),),
        ),
      ],
    );
  }
}
