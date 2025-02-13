import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButton extends StatelessWidget {
  final Widget iconButton;
  final String title;
  final String url;
  const CustomButton(
      {super.key,
      required this.iconButton,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          if (!await launchUrl(Uri.parse(url))) {
            throw Exception('Could not launch $url');
          }
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.black, width: 1)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              iconButton,
              SizedBox(width: 12),
              Text(title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black)),
              Expanded(child: Container()),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ));
  }
}
