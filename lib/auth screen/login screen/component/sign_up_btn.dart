

import '../../../const/color.dart';
import '../../../const/export.dart';

class SignUpButton extends StatelessWidget {
  final String text, txt;
  final Function()? onTap;
  const SignUpButton({
    Key? key,
    required this.text,
    required this.txt,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Spacer(),
          AutoSizeText(
            text,
            style: GoogleFonts.abel(),
            maxLines: 1,
          ),
          GestureDetector(
            onTap: onTap,
            child: AutoSizeText(
              txt,
              style: GoogleFonts.patuaOne(
                  color: kPrimaryColor,
                  fontSize: 20.sp,
                  decoration: TextDecoration.underline),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}