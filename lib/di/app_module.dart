import 'package:dependencies/dependencies.dart';
import 'package:quick_notes/data/preferences/user_session.dart';
import 'package:quick_notes/pages/splash/splash_bloc.dart';

class AppModule implements Module {
  @override
  void configure(Binder binder) {
    binder
      ..bindSingleton(UserSession())
      ..bindFactory((inj, params)=> SplashBloc());
  }
}
