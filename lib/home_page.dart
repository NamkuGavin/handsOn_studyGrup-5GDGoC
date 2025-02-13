import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handson_studygrup5/widget/custom_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to my Hands On - Study Grup #5",
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.07,
              image: AssetImage("assets/images/icon_flutter.png"),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(125),
                      child: Image.asset("assets/images/me.jpg",
                          fit: BoxFit.cover, alignment: Alignment.topCenter),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                      "Salam kenal man-teman dan kakak-kakak, Perkenalkan saya Muhammad Gavin Arasyi kalian bisa panggil saya Gavin\n\nSaya Mahasiswa S1 Informatika Universitas Telkom Bandung angkatan 2023. Saya berasal dari Kota Salatiga, Jawa Tengah. Hobi saya suka bermain game terutama game platform seperti PS2, lalu suka bermain game PC salah satunya bergenre FPS, RPG, dan Open World. Lalu ketika saya gabut banget selain bermain, saya suka mencoba hal kecil atau iseng saja suka ngoding Flutter terutama selalu mikir UI design untuk CV saya agar ditaruh di platform mobile.\n\nSalam kenal semuanyaa....",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center),
                  SizedBox(height: 50),
                  CustomButton(
                      iconButton: SvgPicture.asset(
                          "assets/icons/github_icon.svg",
                          height: 30),
                      title: "Link Github",
                      url: "https://github.com/NamkuGavin"),
                  SizedBox(height: 20),
                  CustomButton(
                      iconButton: Image.asset("assets/icons/instagram_icon.png",
                          height: 30),
                      title: "Link Instagram",
                      url:
                          "https://www.instagram.com/namkuvin?utm_source=qr&igsh=MXRzYjN6aTM4d2ZyMw=="),
                  SizedBox(height: 20),
                  CustomButton(
                      iconButton: SvgPicture.asset(
                          "assets/icons/linkedin_icon.svg",
                          height: 30),
                      title: "Link Linkedin",
                      url:
                          "https://www.linkedin.com/in/muhammad-gavin-arasyi-23748a28a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
