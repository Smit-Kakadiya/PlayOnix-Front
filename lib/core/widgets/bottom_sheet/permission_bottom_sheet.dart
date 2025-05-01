import 'package:flutter/material.dart';
import 'package:playonix/core/widgets/button_widget/primary_button.dart';

import 'bottom_sheet.dart';


void showPermissionBottomSheet({
  required BuildContext context,
  String? title,
  String? description,
  Widget? headerImage,
  required String primaryButtonText,
  required String secondaryButtonText,
  required VoidCallback onPrimaryTap,
  required VoidCallback onSecondaryTap,
}){
  showCustomBottomSheet(
    context: context,
    content: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          headerImage??SizedBox.shrink(),
          SizedBox(height: 20,),
          if(title?.isNotEmpty??false)
          Text(title ?? '', style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,),
          SizedBox(height: 16,),
          if(description?.isNotEmpty??false)
            Text(description ?? '', style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Button.secondary(text: "Cancel", onTap: onSecondaryTap)),
              SizedBox(width: 16,),
              Expanded(child: Button.primary(text: "Logout", onTap: onPrimaryTap)),
            ],
          ),
        ],
      ),
    )
  );
}