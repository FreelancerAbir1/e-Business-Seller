
import '../../../const/export.dart';

class PopularProductText extends StatelessWidget {
  const PopularProductText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: AutoSizeText(
        text,
        style: GoogleFonts.bitter(fontSize: 20.sp, fontWeight: kBold),
      ),
    );
  }
}
