part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeChanged extends ThemeEvent {
  final AppThemeType themeType;

  const ThemeChanged(this.themeType);

  @override
  List<Object?> get props => [themeType];
}
