import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/pages/Circuitos.dart';
import 'package:sidebar_animation/pages/Ranking.dart';
import 'package:sidebar_animation/pages/circuito_andamento.dart';
import 'package:sidebar_animation/pages/config.dart';
import 'package:sidebar_animation/pages/mappage.dart';
import '../pages/myaccountspage.dart';
import '../pages/myorderspage.dart';
import '../pages/homepage.dart';

enum NavigationEvents {
  MappPage,
  Circuitos,
  CircuitosAndamento,
  Ranking,
  Suporte,
  Logout,
  Configuracoes,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.MappPage:
        yield MappPage();
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
     /* case NavigationEvents.Ranking:
        yield Suporte();
        break;
         case NavigationEvents.Ranking:
        yield Logout();
        break;*/
    }
  }
}
