import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/screen/dashboard_screen.dart';
import 'package:flutter_application_2/screen/login_screen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/POLBENG.png',
              width: 128,
            ),
            const SizedBox(
              height: 8,
            ),
            Text('PresensiApp',
                style: GoogleFonts.manrope(
                  fontSize: 34,
                  color: const Color(0xFF12A3DA),
                  fontWeight: FontWeight.w700,
                )),
          ],
        ),
      ),
    );
  }
}
