import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

extension WidgetSpacing on int {
  SizedBox get wSpace {
    assert(
      this >= 0,
    );
    return SizedBox(width: w);
  }

  SizedBox get hSpace {
    assert(
      this >= 0,
    );
    return SizedBox(height: h);
  }
}
