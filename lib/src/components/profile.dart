import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SHProfile extends StatelessWidget {
  const SHProfile({
    super.key,
    this.name,
    this.image,
    required this.icon,
    this.onTap,
    this.radius,
    required this.assetImg,
    required this.isLoggedIn,
  });
  final String? name;
  final String? image;
  final IconData icon;
  final VoidCallback? onTap;
  final double? radius;
  final String assetImg;
  final bool isLoggedIn;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {
          if (isLoggedIn && onTap != null) {
            onTap!();
          }
        },
        child: Ink(
          width: (radius ?? 25.r) * 2,
          height: (radius ?? 25.r) * 2,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(100),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Center(
              child: isLoggedIn
                  ? CachedNetworkImage(
                      imageUrl: image ?? "",
                      errorWidget: (context, url, error) {
                        return Image.asset(assetImg);
                      },
                    )
                  : Image.asset(assetImg),
            ),
          ),
        ),
      ),
    );
  }
}
