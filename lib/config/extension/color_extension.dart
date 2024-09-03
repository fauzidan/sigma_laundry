import 'dart:ui';

extension ColorExtensions on Color {
  Color darken(int percent) {
    assert(1 <= percent && percent <= 100);
    var color = this;
    var coefficient = 1 - percent / 100;
    return Color.fromARGB(
      color.alpha,
      (color.red * coefficient).round(),
      (color.green * coefficient).round(),
      (color.blue * coefficient).round(),
    );
  }

  Color lighten(int percent) {
    assert(1 <= percent && percent <= 100);
    var color = this;
    var coefficient = percent / 100;
    return Color.fromARGB(
      color.alpha,
      color.red + ((225 - color.red) * coefficient).round(),
      color.green + ((225 - color.green) * coefficient).round(),
      color.blue + ((225 - color.blue) * coefficient).round(),
    );
  }
}
