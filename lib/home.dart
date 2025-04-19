import 'package:flutter/material.dart';
import 'config/theme/theme_colors.dart';
import 'core/widgets/animations/scale_tap_animation.dart';
import 'core/widgets/button_widget/primary_button.dart';
import 'core/widgets/textformfield_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<ThemeColors>();
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Theme Demo')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            TextFormFieldWidget(),
            SizedBox(height: 20),
            Button.primary(text: 'Primary Button', onTap: () {}, isLoading: false),
            SizedBox(height: 20),
            Button.secondary(text: 'Secondary Button', onTap: () {}, isLoading: false),
            SizedBox(height: 20),
            Button.primarySmall(text: 'Primary small Button', onTap: () {}, isLoading: false),
            SizedBox(height: 20),
            Button.secondarySmall(text: 'Secondary small Button', onTap: () {}, isLoading: false),
            SizedBox(height: 20),
            // Expanded(
            //   child: Center(
            //     child: Container(
            //       padding: const EdgeInsets.all(20),
            //       decoration: BoxDecoration(
            //         color: themeColor?.containerColor,
            //         borderRadius: BorderRadius.circular(16),
            //       ),
            //       child: Text(
            //         'This container adapts to selected theme!',
            //         style: TextStyle(
            //           color: themeColor?.textColor,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 100,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: AppThemeType.values.length,
            //     itemBuilder: (context, index) {
            //       final themeType = AppThemeType.values[index];
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: ElevatedButton(
            //           onPressed: () {
            //             context.read<ThemeBloc>().add(ThemeChanged(themeType));
            //           },
            //           child: Text('Theme ${index + 1}'),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
