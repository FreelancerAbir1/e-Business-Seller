
import '../../../const/export.dart';

class AdminText extends StatelessWidget {
  const AdminText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(color: kTextColor),
    );
  }
}