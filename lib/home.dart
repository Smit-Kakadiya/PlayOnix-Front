import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playonix/config/theme/app_theme.dart';
import 'config/theme/bloc/theme_bloc.dart';
import 'config/theme/theme_colors.dart';
import 'core/widgets/bottom_sheet/bottom_sheet.dart';
import 'core/widgets/bottom_sheet/permission_bottom_sheet.dart';
import 'core/widgets/button_widget/primary_button.dart';
import 'core/widgets/textformfield_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<ThemeColors>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playonix Common Widgets'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormFieldWidget(hintText: "Enter mobile number...",),
                Spacer(),
                SizedBox(height: 20),
                Button.primary(text: 'Primary Button', onTap: () {
                  showPermissionBottomSheet(
                    context: context,
                    headerImage: Icon(Icons.exit_to_app_rounded,size: 48,),
                    primaryButtonText: "Logout",
                    secondaryButtonText: "Cancel",
                    onPrimaryTap: (){},
                    onSecondaryTap: (){}, title: 'Are you sure\nyou want to log out?', description: '',
                  );
                }, isLoading: false),
                SizedBox(height: 20),
                Button.secondary(text: 'Secondary Button', onTap: () {}, isLoading: false),
                SizedBox(height: 20),
                Button.primarySmall(text: 'Primary small Button', onTap: () {}, isLoading: false),
                SizedBox(height: 20),
                Button.secondarySmall(text: 'Secondary small Button', onTap: () {}, isLoading: false),
                SizedBox(height: 20),
                BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return CupertinoSwitch(
                      value: state.themeData == AppTheme.lightTheme(),
                      onChanged: (value) => context.read<ThemeBloc>().add(ThemeChanged(state.themeData == AppTheme.lightTheme()
                          ? AppThemeType.dark
                          : AppThemeType.light)),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
