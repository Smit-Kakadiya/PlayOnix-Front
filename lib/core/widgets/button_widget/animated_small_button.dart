//
// import 'package:flutter_boilerplate/res/exports/common_exports.dart';
//
//
// class AnimatedSmallButton extends StatelessWidget {
//   final double? height;
//   final double? width;
//   final double? borderRadius;
//   final double? loaderSize;
//   final Color? buttonColor;
//   final Color? textColor;
//   final Color? shadowColor;
//   final bool? isShadow;
//   final String text;
//   final VoidCallback onTap;
//
//   const AnimatedSmallButton(
//       {super.key,
//       this.borderRadius,
//       this.buttonColor,
//       this.textColor,
//       this.shadowColor,
//       this.isShadow = true,
//       required this.text,
//       this.height,
//       this.width,
//       required this.onTap,
//       this.loaderSize});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScaleTap(
//       onPressed: onTap,
//       duration: const Duration(microseconds: 1000),
//       child: Container(
//         decoration: BoxDecoration(
//             color: buttonColor ?? Theme.of(context).primaryColor,
//             borderRadius: BorderRadius.circular(borderRadius ?? 100),
//             boxShadow: (isShadow ?? false)
//                 ? const [
//                     BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 3)),
//                   ]
//                 : []),
//         height: height ?? 30,
//         width: width ?? 120,
//         child: Center(
//           child: AppText.bodyMedium(
//             text,
//             color: textColor ?? ColorConstants.whiteColor,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }
// }
