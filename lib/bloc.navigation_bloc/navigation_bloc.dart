import 'package:bloc/bloc.dart';
import 'package:bsb_go/pages/Circuitos.dart';
import 'package:bsb_go/pages/Ranking.dart';
import 'package:bsb_go/pages/circuito_andamento.dart';
import 'package:bsb_go/pages/config.dart';
import 'package:bsb_go/pages/mappage.dart';
import 'package:bsb_go/pages/suporte.dart';
import 'package:bsb_go/pages/telalogin.dart';


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
