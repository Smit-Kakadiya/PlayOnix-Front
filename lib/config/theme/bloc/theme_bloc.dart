import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:playonix/config/theme/app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';


class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(AppTheme.darkTheme())) {
    on<ThemeChanged>((event, emit) {
      final theme = AppTheme.getTheme(event.themeType);
      emit(ThemeState(theme));
    });
  }
}
