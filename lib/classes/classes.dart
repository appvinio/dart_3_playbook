// https://github.com/dart-lang/language/blob/master/accepted/future-releases/class-modifiers/feature-specification.md

class C {} //Yes	Yes	Yes	No	No

final cI = C();

class CE extends C {}

class CI implements C {}

base class BC {} //	Yes	Yes	No	No	No

final bcI = BC();

// class BCE extends BC {} // The type 'BCE' must be 'base', 'final' or 'sealed' because the supertype 'BC' is 'base'.
final class FBCE extends BC {}

sealed class SBCE extends BC {}

base class BBCE extends BC {}

abstract base class ABBCE extends BC {}

// mixin MBCE on BC {} // The type 'MBCE' must be 'base', 'final' or 'sealed' because the supertype 'BC' is 'base'.
final mixin FMBCE on BC {}
sealed mixin SMBCE on BC {}
base mixin BMBCE on BC {}

interface class IC {} // Yes	No	Yes	No	No

final icI = IC(); // !!!

class ICE extends IC {} // !!!

class ICI implements IC {}

final class FICE extends IC {}

sealed class SICE extends IC {}

base class BICE extends IC {}

abstract base class ABICE extends IC {}

mixin MICE on IC {}
final mixin FMICE on IC {}
sealed mixin SMICE on IC {}
base mixin BMICE on IC {}

/*
+---------------------------+-----------+---------+------------+---------+-------------+
| Declaration               | Construct?| Extend? | Implement? | Mix in? | Exhaustive? |
+---------------------------+-----------+---------+------------+---------+-------------+
| class                     | Yes       | Yes     | Yes        | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| base class                | Yes       | Yes     | No         | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| interface class           | Yes       | No      | Yes        | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| final class               | Yes       | No      | No         | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| sealed class              | No        | No      | No         | No      | Yes         |
+---------------------------+-----------+---------+------------+---------+-------------+
| abstract class            | No        | Yes     | Yes        | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| abstract base class       | No        | Yes     | No         | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| abstract interface class  | No        | No      | Yes        | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| abstract final class      | No        | No      | No         | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| mixin class               | Yes       | Yes     | Yes        | Yes     | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| base mixin class          | Yes       | Yes     | No         | Yes     | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| abstract mixin class      | No        | Yes     | Yes        | Yes     | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| abstract base mixin class | No        | Yes     | No         | Yes     | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| mixin                     | No        | No      | Yes        | Yes     | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| base mixin                | No        | No      | No         | Yes     | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| interface mixin           | No        | No      | Yes        | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| final mixin               | No        | No      | No         | No      | No          |
+---------------------------+-----------+---------+------------+---------+-------------+
| sealed mixin              | No        | No      | No         | No      | Yes         |
+---------------------------+-----------+---------+------------+---------+-------------+
*/
