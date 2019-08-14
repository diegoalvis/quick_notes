import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/pages/main/main_page.dart';
import 'package:quick_notes/pages/splash/splash_bloc.dart';
import 'package:quick_notes/util/state_util.dart';
import 'package:quick_notes/util/widget_util.dart';
import 'package:dependencies_flutter/dependencies_flutter.dart';

class SplashPage extends StatelessWidget {
  static const ROUTE = '/';

  @override
  Widget build(BuildContext context) {
    SplashBloc _bloc = InjectorWidget.of(context).get();
    return BlocBuilder(
      bloc: _bloc,
      builder: (ctx, state) {
        if (state is InitialState) {
          _bloc.dispatch(0);
        }

        if (state is SuccessState) {
          onDidWidgetLoaded(() {
            Navigator.pushReplacementNamed(context, state.data ? MainPage.ROUTE : MainPage.ROUTE);
          });
        }

        return Container(
          width: 80,
          height: 80,
          color: Colors.white,
          child: Center(
            child: Image(color: Theme.of(context).accentColor, width: 80, height: 80, image: AssetImage('assets/images/ic_notes_logo.png')),
          ),
        );
      },
    );
  }
}
