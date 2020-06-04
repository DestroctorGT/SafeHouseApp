class RoutesManager {
  //Variables static encargadas de almacenar el nombre de las rutas.
  static const _routeNameFirst = '/MyHomePage';
  static const _routeNameSecond = '/PasswordMenu';
  static const _routeNameThird = '/CardGenerator';
  static const _routeNameFourth = '/PasswordCardDeleteManager';

  //Metodos encargados de retornar el nombre de las rutas.
  String routeNameFirst() => _routeNameFirst;
  String routeNameSecond() => _routeNameSecond;
  String routeNameThird() => _routeNameThird;
  String routeNameFourth() => _routeNameFourth;
}
