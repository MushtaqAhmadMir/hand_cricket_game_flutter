const String _path = "assets/icons";
const String _rivePath = "assets/anims";

class IconManager {
  //rive
  // static const String riveAnim = "$_rivePath/hand_cricket.riv";

  static const String background = "$_path/background.png";
  static const String ball = "$_path/ball.png";
  static const String batting = "$_path/batting.png";

  //runs
  static const String one = "$_path/one.png";
  static const String two = "$_path/two.png";
  static const String three = "$_path/three.png";
  static const String four = "$_path/four.png";
  static const String five = "$_path/five.png";
  static const String six = "$_path/six.png";
  static const String sixer = "$_path/sixer.png";

  static const String out = "$_path/out.png";

  static const String youWon = "$_path/you_won.png";
  static const String gameDefend = "$_path/game_defend.webp";

  //hands
  static const String r_1 = "$_path/r_1.png";
  static const String r_2 = "$_path/r_2.png";
  static const String r_3 = "$_path/r_3.png";
  static const String r_4 = "$_path/r_4.png";
  static const String r_5 = "$_path/r_5.png";
  static const String r_6 = "$_path/r_6.png";

  static const String l_1 = "$_path/l_1.png";
  static const String l_2 = "$_path/l_2.png";
  static const String l_3 = "$_path/l_3.png";
  static const String l_4 = "$_path/l_4.png";
  static const String l_5 = "$_path/l_5.png";
  static const String l_6 = "$_path/l_6.png";

  static const String handClose = "$_path/hand_closed.png";

  // Helpers for optimization (optional)
  static String left(int value) => 'assets/icons/l_$value.png';
  static String right(int value) => 'assets/icons/r_$value.png';
}
