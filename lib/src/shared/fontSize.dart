import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'shared.dart';

/// H -> Heading 24
double kf6 = ks6.spMin;

/// SH -> Sub Heading 20
double kf5 = ks5.spMin;

/// FS - Normal 18
double kfs = ks45.spMin;

/// B -> Body 16
double kf4 = ks4.spMin;

/// SM -> Small 14
double kf35 = ks35.spMin;

/// XS -> Extra Small 12
double kf3 = ks3.spMin;

/// XXS -> Extra Extra Small 10
double kf25 = ks2.spMin;

double kf(double size) {
  return size.spMin;
}
