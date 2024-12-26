import 'package:flutter/material.dart';
import 'individual_portfolio.dart';
import 'family_portfolio.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboardAfterLogin extends StatefulWidget {
  const dashboardAfterLogin({super.key});

  @override
  State<dashboardAfterLogin> createState() => _dashboardAfterLoginState();
}

class _dashboardAfterLoginState extends State<dashboardAfterLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Header Row with Logo and Text
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Space between the logo and buttons
                children: [
                  // Logo on the left
                  Image.asset(
                    'assets/images/dshb_logo.png',
                  ),

                  // Buttons on the right
                  Row(
                    children: [
                      // First button
                      TextButton(
                        onPressed: () {
                          // Add your functionality here
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size(20,
                              20), // Adjust clickable area to match image size
                          padding: EdgeInsets.zero, // Remove padding
                          tapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, // Shrink touch area
                        ),
                        child: Image.asset(
                          'assets/images/bell-svgrepo-com.png',
                          height: 20, // Adjust the height as needed
                          width: 20, // Adjust the width as needed
                        ),
                      ),

                      const SizedBox(width: 10), // Spacing between buttons

                      // Second button
                      TextButton(
                        onPressed: () {
                          // Add your functionality here
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Image.asset(
                          'assets/images/search-svgrepo-com.png',
                          height: 20,
                          width: 20,
                        ),
                      ),

                      const SizedBox(width: 10), // Spacing between buttons

                      // Third button
                      TextButton(
                        onPressed: () {
                          // Add your functionality here
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size(20, 20),
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Image.asset(
                          'assets/images/user-svgrepo-com.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Main Content Area with Gradient Background
          Expanded(
            child: Container(
              width: double.infinity,
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
                    const SizedBox(height: 20),
                    Text(
                      'Siddharth Shrimal',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0f625c),
                      ),
                    ),
                    Text(
                      'Individual MF',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF09a99d),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Portfolio Value',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF648683),
                                  ),
                                ),
                                Text(
                                  '₹1,19,91,489',
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF0f625c),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 25),
                          Container(
                            width: 1,
                            height: 56,
                            color: Color(0xFFd5d4d0),
                          ),
                          SizedBox(width: 25),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Overal Gain %',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF648683),
                                  ),
                                ),
                                Text(
                                  '₹25,72,686',
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF0f625c),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'Abs. Ret.:',
                                style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ' 27.29%',
                                style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'XIRR:',
                                style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ' 10.54%',
                                style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 26,
                          bottom: 13,
                          left: 18,
                          right: 18,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            color: Color(0xFF2cbefc),
                                            width: 4,
                                            height: 30,
                                          ),
                                          SizedBox(width: 10),
                                          SizedBox(
                                            width: 53,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Equity',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF303131),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  '95.87%',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF8c8c8c),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            '₹ 1,14,96,531',
                                            style: GoogleFonts.poppins(
                                                color: Color(0xFF0f625c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Container(
                                            color: Color(0xFFf79e3b),
                                            width: 4,
                                            height: 30,
                                          ),
                                          SizedBox(width: 10),
                                          SizedBox(
                                            width: 53,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Hybrid',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF303131),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  '3.91%',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF8c8c8c),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            '₹ 14,68,903',
                                            style: GoogleFonts.poppins(
                                                color: Color(0xFF0f625c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Container(
                                            color: Color(0xFFa6a8a7),
                                            width: 4,
                                            height: 30,
                                          ),
                                          SizedBox(width: 10),
                                          SizedBox(
                                            width: 53,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Debt',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF303131),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  '0%',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF8c8c8c),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            '₹ 0',
                                            style: GoogleFonts.poppins(
                                                color: Color(0xFF0f625c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Container(
                                            color: Color(0xFFdac45e),
                                            width: 4,
                                            height: 30,
                                          ),
                                          SizedBox(width: 10),
                                          SizedBox(
                                            width: 53,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Other',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF303131),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  '0.22%',
                                                  style: GoogleFonts.poppins(
                                                      color: Color(0xFF8c8c8c),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            '₹ 26.055',
                                            style: GoogleFonts.poppins(
                                                color: Color(0xFF0f625c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  child:
                                      Image.asset('assets/images/rtt_brd.png'),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 18, bottom: 18),
                              color: Color(0xFFd7d7d7),
                              height: 1,
                            ),
                            Wrap(
                              spacing: 10,
                              children: [
                                Text(
                                  'As on:',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF648683),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                Text(
                                  '29/03/2023',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFF648683),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3, // Adjust elevation as needed
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Match container's border radius
                        ),
                        backgroundColor:
                            Colors.white, // Match container's color
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                        // Define the action for the button here
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const individualPortfolioPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 10, right: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFb6dfdc),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child:
                                      Image.asset('assets/images/prtflo.png'),
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Individual Portfolio',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF0f625c),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Icon(
                                  Icons.info_outline,
                                  color: Color(0xFF0d958b),
                                  size: 20,
                                ),
                              ),
                              SizedBox(width: 30),
                              Container(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF0d958b),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3, // Adjust elevation as needed
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Match container's border radius
                        ),
                        backgroundColor:
                            Colors.white, // Match container's color
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                        // Define the action for the button here
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const familyPortfolioPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 10, right: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFb6dfdc),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child:
                                      Image.asset('assets/images/prtflo.png'),
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Family Portfolio',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF0f625c),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Icon(
                                  Icons.info_outline,
                                  color: Color(0xFF0d958b),
                                  size: 20,
                                ),
                              ),
                              SizedBox(width: 55),
                              Container(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF0d958b),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30, bottom: 20),
                        child: Text(
                          'Explore Investment Opportunites'.toUpperCase(),
                          style: GoogleFonts.poppins(
                              color: Color(0xFF0f625c),
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        )),
                    Container(
                      margin: EdgeInsets.only(bottom: 34),
                      child: Wrap(
                        spacing: 12,
                        runSpacing: 28,
                        children: [
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(
                                8), // Add ripple effect matching the button shape
                            child: Container(
                              width: 100,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10), // Optional padding
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFb2daf4),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/nw_fnd.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'New Fund Offer',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF0f625c),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 100,
                            color: Color(0xFFc7d1d0),
                          ),
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFefecdb),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/thm_invst.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Themed Investment',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 100,
                            color: Color(0xFFc7d1d0),
                          ),
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFa5d9d5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/int_mtfnd.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'International Mutual Funds',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFaadad5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/brs_amc.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Browse By AMCs',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 100,
                            color: Color(0xFFc7d1d0),
                          ),
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFabd9f4),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/inv_tx.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Invest To Save tax',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 100,
                            color: Color(0xFFc7d1d0),
                          ),
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFedebdb),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/ctg_tprs.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Category Toppers',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Add more widgets here
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
            color: Colors.white,
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ftr_hmm.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF648683),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ftr_prtflo.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text(
                          'Portfolio',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF648683),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ftr_invst.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text(
                          'Invest',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF648683),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/rptt.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text(
                          'Report',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF648683),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/stng.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text(
                          'Settings',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF648683),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
