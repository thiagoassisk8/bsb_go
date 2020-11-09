import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/pages/Circuitos.dart';
import 'package:sidebar_animation/pages/Ranking.dart';
import 'package:sidebar_animation/pages/circuito_andamento.dart';
import 'package:sidebar_animation/pages/config.dart';
import 'package:sidebar_animation/pages/mappage.dart';
import 'package:sidebar_animation/pages/suporte.dart';
import 'package:sidebar_animation/pages/telalogin.dart';


enum NavigationEvents {
  MapPage,
  Circuitos,
  CircuitosAndamento,
  Ranking,
  Suporte,
  Logout,
  Configuracoes,
  LoginScreen,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MapPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.MapPage:
        yield MapPage();
        break;
      case NavigationEvents.Circuitos:
        yield Circuitos();
        break;
      case NavigationEvents.CircuitosAndamento:
        yield CircuitosAndamento();
        break;
      case NavigationEvents.Ranking:
        yield Ranking();
        break;
      case NavigationEvents.Configuracoes:
        yield Configuracoes();
        break;
      case NavigationEvents.Suporte:
        yield Suporte();
        break;
      case NavigationEvents.LoginScreen:
        yield LoginScreen();
        break;
     /*    case NavigationEvents.Ranking:
        yield Logout();
        break;*/
    }
  }
}
