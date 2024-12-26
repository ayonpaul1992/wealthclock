import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'change_password.dart';

class otpPage extends StatefulWidget {
  const otpPage({super.key});

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
  final otpText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFfffaf5),
              Color(0xFFe7f6f5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: Image.asset(
                  'assets/images/logo_img.png',
                  height: 120,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Enter OTP'.toUpperCase(),
                style: GoogleFonts.poppins(
                  color: const Color(0xFF0f625c),
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      'OTP hasbeen sent to email-id: ',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF0f625c),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF0f625c),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              TextField(
                controller: otpText,
                decoration: _inputDecoration('Enter Your OTP'),
                style: const TextStyle(
                  color: Color(0xFF648683),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {
                  String uOtp = otpText.text.trim();

                  print("Phone: $uOtp");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const changePasswordPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFfdd1a0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                ),
                child: Text(
                  'Next'.toUpperCase(),
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF222222),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40, bottom: 30),
                          width: double.infinity,
                          height: 1,
                          color: const Color(0xFFc7d2d0),
                        ),
                        Positioned(
                          top: 22,
                          left: 160,
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.white, // Optional background color
                              borderRadius:
                                  BorderRadius.circular(100), // Rounded corners
                            ),
                            child: Center(
                              child: Text(
                                'or',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF648683),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 400,
                              margin: const EdgeInsets.only(top: 70),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Text(
                                    'Have an account?',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF0f625c),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Handle the link click here
                                      print('Sign up clicked');
                                      // Navigate to the Terms and Conditions page if needed
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()));
                                    },
                                    child: Text(
                                      'Sign In',
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xFF0da99e),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color: Color(0xFF0f625c),
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(
        color: const Color(0xFF648683),
        fontSize: 15,
      ),
    );
  }
}