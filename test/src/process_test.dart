import 'dart:io';

import 'package:gurps_traits/src/parser.dart';
import 'package:test/test.dart';

class CodePointCharacter {
  String char;
  int codePoint;

  CodePointCharacter(this.char, this.codePoint);

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (other is CodePointCharacter) {
      return char == other.char && codePoint == other.codePoint;
    }
    return false;
  }

  @override
  int get hashCode => char.hashCode ^ codePoint.hashCode;

  @override
  String toString() {
    return '$char:$codePoint';
  }
}

main() {
  test('modifier', () {
    var content = '''
Statistics: Affliction 1 (Will; Accessibility, Only sa-pient beings, −10%; Area Effect, 2 yards, +50%; Based on Will, +20%; Disadvantage, Pacifism, Self-Defense Only, +15%; Fixed Duration, +0%; Male-diction 2, +150%; Negated Disadvantage, Berserk, +200%; No Signature, +20%; Reduced Duration, 1/3, −10%; Runecasting, −30%; Terminal Condi-tion, Injury, −10%; Variable Area, +5%) [53]. 
''';
    TraitComponents c = Parser().parse(content);
    expect(c.notes, hasLength(13));
    String x = c.notes[10];
    int index = 0;
    x.codeUnits.forEach((c) {
      print('${x.substring(index, index + 1)} : $c');
      index++;
    });

    expect(c.modifiers, hasLength(12));
    c.modifiers.forEach((f) => print(f));
    print(
        '${c.modifiers.map((it) => ModifierComponents.parse(it)).map((f) => f.value).reduce((a, b) => a + b)}');
  });

  test('codeunits', () {
    List<String> files = [
      // 'Grimoire-Hagall.txt',
      // 'Grimoire-Sol.txt',
      'Grimoire-Tyr.txt',
      // 'Grimoire-Yr.txt',
    ];

    var r = RegExp(r'(?<name>.+?), (?<sign>.)(?<value>\d+)\%');

    files.forEach((file) {
      print('${file} ==========================');

      List<String> contents = File(file).readAsLinesSync();
      Set<CodePointCharacter> codeUnits = {};

      contents.forEach((line) {
        if (line.startsWith(RegExp(r'^\s*Statistics:'))) {
          var notes =
              line.substring(line.indexOf('(') + 1, line.lastIndexOf(')'));
          var parts = notes.split(';');
          parts.map((part) => part.trim()).forEach((it) {
            r.allMatches(it).forEach((match) {
              int codeUnit = match.namedGroup('sign').codeUnitAt(0);
              codeUnits
                  .add(CodePointCharacter(match.namedGroup('sign'), codeUnit));

              if (![43, 8722].contains(codeUnit)) {
                print('${contents.indexOf(line) + 1}:${match.group(0)}');
              }
            });
          });
        }
      });
      print(codeUnits);
    });
  });
}
