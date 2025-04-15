import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/bloc/theme_bloc.dart';
import 'core/theme/theme_colors.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<ThemeColors>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Theme Demo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: themeColor?.containerColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'This container adapts to selected theme!',
                  style: TextStyle(
                    color: themeColor?.textColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: AppThemeType.values.length,
              itemBuilder: (context, index) {
                final themeType = AppThemeType.values[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ThemeBloc>().add(ThemeChanged(themeType));
                    },
                    child: Text('Theme ${index + 1}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}