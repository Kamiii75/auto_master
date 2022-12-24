

import 'package:flutter/cupertino.dart';

Decoration default_button_decoration=BoxDecoration (
  borderRadius:  BorderRadius.circular(15),
  gradient:  const LinearGradient (
    begin:  Alignment(0, -1),
    end:  Alignment(0, 1),
    colors:  <Color>[Color(0xffeb883f), Color(0xffe25d37)],
    stops:  <double>[0, 0.648],
  ),
  boxShadow:  const [
    BoxShadow(
      color:  Color(0x1e000000),
      offset:  Offset(0, 2),
      blurRadius:  0.5,
    ),
  ],
);