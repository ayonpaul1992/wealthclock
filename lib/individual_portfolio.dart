import 'package:flutter/material.dart';
import 'each_scheme_details.dart';
import 'package:google_fonts/google_fonts.dart';

class individualPortfolioPage extends StatefulWidget {
  const individualPortfolioPage({super.key});

  @override
  State<individualPortfolioPage> createState() =>
      _individualPortfolioPageState();
}

class _individualPortfolioPageState extends State<individualPortfolioPage> {
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
                      'MF Details',
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
                                  '₹26,57,633',
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
                                  '₹7,07,633',
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
                                ' 36.29%',
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
                                ' 12.65%',
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
                                    const eachSchemeDetails()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Bandhan Tax Advantage (ELSS)',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF0d958b),
                                    size: 18,
                                  )
                                ],
                              ),
                              Text(
                                'Fund Regular Growth',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF0f625c),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  '₹7,32,690',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Cost Amount',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '5,00,000',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Folio No.',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'xxx7/73',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Gain/Loss',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Color(0xFF09a99d),
                                            size: 15,
                                          ),
                                          Text(
                                            '2,32,690',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xFF09a99d),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 18, bottom: 18),
                                width: double.infinity,
                                color: Color(0xFFd7d7d7),
                                height: 1,
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
                                          ' 46.54%',
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
                                          ' 12.28%',
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
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const familyPortfolioPage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Invesco India Focused 20 Equity',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF0d958b),
                                    size: 18,
                                  )
                                ],
                              ),
                              Text(
                                'Fund Regilar Growth',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF0f625c),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  '₹10,34,198',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Cost Amount',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '7,50,000',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Folio No.',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'xxx4234',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Gain/Loss',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Color(0xFF09a99d),
                                            size: 15,
                                          ),
                                          Text(
                                            '2,84,192',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xFF09a99d),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 18, bottom: 18),
                                width: double.infinity,
                                color: Color(0xFFd7d7d7),
                                height: 1,
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
                                          ' 46.54%',
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
                                          ' 12.28%',
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
