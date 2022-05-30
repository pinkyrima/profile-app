import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_switch_event.dart';
part 'theme_switch_state.dart';

class ThemeSwitchBloc extends Bloc<ThemeSwitchEvent, ThemeSwitchState> {
  ThemeSwitchBloc() : super(ThemeSwitch(true)) {
    on<ThemeSwitchEvent>((event, emit) {
      emit(ThemeSwitch((event as ThemeSwitchToggleEvent).isDark));
    });
  }
}
