import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inova/bussiness_logic/cubit/navigation/navigation_items.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(BarItem.home, 0));

  void getNavBarItem(BarItem navbarItem) {
    switch (navbarItem) {
      case BarItem.home:
        emit(NavigationState(BarItem.home, 0));
        break;
      case BarItem.perfil:
        emit(NavigationState(BarItem.perfil, 1));
        break;
    }
  }
}
