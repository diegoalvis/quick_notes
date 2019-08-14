import 'package:bloc/bloc.dart';
import 'package:quick_notes/util/state_util.dart';

class SplashBloc extends Bloc<int, BaseState>{


  SplashBloc();

  @override
  BaseState get initialState => InitialState();

  @override
  Stream<BaseState> mapEventToState(int event) async*{
    await Future.delayed(Duration(milliseconds: 2500));
//    final logged = await _authRepository.isLogged();
    yield SuccessState<bool>(data: true);

  }

}