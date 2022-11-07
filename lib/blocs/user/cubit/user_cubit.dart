import 'package:bloc/bloc.dart';
import 'package:inova/src/utils/variables/list_variables.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  List<String> list = ['n','ss','ee'];
  UserCubit(this.list) : super(InitUserState());
  
  Future<void> fetchProjectsList() async{
    emit(UserLoadingState());
    try{
      emit(UserLoadedState(list));
    }catch (e){
      emit(UserErrorState('Deu errado papai resolve ai'));
    }
  }
}
