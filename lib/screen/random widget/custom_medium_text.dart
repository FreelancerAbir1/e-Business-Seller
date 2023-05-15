import '../../const/export.dart';

class CustomMediumText extends StatelessWidget {
  const CustomMediumText(
      {super.key, required this.text, required this.alignMent, required this.onTap});
  final String text;
  final AlignmentGeometry alignMent;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignMent,
      child: GestureDetector(
        onTap: onTap,
        child: AutoSizeText(
          text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: kTextColor, fontFamily: bold),
        ),
      ),
    );
  }
}