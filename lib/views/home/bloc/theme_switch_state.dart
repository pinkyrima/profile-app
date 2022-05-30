part of 'theme_switch_bloc.dart';

@immutable
abstract class ThemeSwitchState {}

class ThemeSwitch extends ThemeSwitchState {
  ThemeSwitch(this.isDark);

  final bool isDark;
}
