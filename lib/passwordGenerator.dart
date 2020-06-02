import 'dart:math';

class PasswordGenerator {
  //Lista encargada de almacenar los caracteres.
  List _arrayChar = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  //Lista encargada de almacenar los caracteres en mayuscula.
  List _arrayCharCaps = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  //Lista encargada de almacenar los caracteres especiales.
  List _arrayCharEspecial = [
    " ",
    "!",
    "'",
    "#",
    "%",
    "&",
    "(",
    ")",
    "*",
    "+",
    ",",
    "-",
    ".",
    ";",
    "<",
    ">",
    "=",
    "?",
    "@"
  ];

  //Lista encargada de almacenar los numeros.
  List _arrayNumber = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  //Metodo encargado de generar nuevas contraseñas sin restriciones.
  void createNormalPassword() {
    String randomChar = _arrayChar[Random().nextInt(_arrayChar.length)];
    String rc = randomChar;

    String randomCharM =
        _arrayCharCaps[Random().nextInt(_arrayCharCaps.length)];
    String rcM = randomCharM;

    int randomNumber = _arrayNumber[Random().nextInt(_arrayNumber.length)];
    int rn = randomNumber;

    String randomCE =
        _arrayCharEspecial[Random().nextInt(_arrayCharEspecial.length)];
    String rs = randomCE;

    List _arrayCombination = [rc, rcM, rn.toString(), rs];
    List _arrayCombinationF = [];

    for (int i = 0; i <= 9; i++) {
      String randomCombination =
          _arrayCombination[Random().nextInt(_arrayCombination.length)];
      String rCom = randomCombination;
      _arrayCombinationF.add(rCom);
    }

    String newPassword = _arrayCombinationF[0] +
        _arrayCombinationF[1] +
        _arrayCombinationF[2] +
        _arrayCombinationF[3] +
        _arrayCombinationF[4] +
        _arrayCombinationF[5] +
        _arrayCombinationF[6] +
        _arrayCombinationF[7] +
        _arrayCombinationF[8] +
        _arrayCombinationF[9];

    print('Nueva contra: ' + newPassword);
  }
}
