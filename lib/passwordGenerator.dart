import 'dart:math';

class PasswordGenerator {
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

  List _arrayNumber = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  void createPassword() {
    String randomChar = _arrayChar[Random().nextInt(_arrayChar.length)];
    print(randomChar);
  }
}
