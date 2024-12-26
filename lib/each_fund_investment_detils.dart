import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class eachFundInvstDtls extends StatefulWidget {
  const eachFundInvstDtls({super.key});

  @override
  State<eachFundInvstDtls> createState() => _eachFundInvstDtlsState();
}

class _eachFundInvstDtlsState extends State<eachFundInvstDtls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // margin: EdgeInsets.only(top: 25,bottom: 14,left: 11,right: 11),
                        child: Padding(
                          padding: EdgeInsets.only(top: 25,left: 11,right: 11,bottom: 14),
                          child: Column(
                            children: [
                              //                     Text(
                              // 'Fund Details',
                              // style: const TextStyle(
                              //   fontSize: 20,
                              //   fontWeight: FontWeight.w600,
                              //   color: Color(0xFF0f625c),
                              // ),
                              //                     ),
                              Text(
                                'Shrimal A P HUF',
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF09a99d),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  'Bandhan Tax Advantage (ELSS)\nFund Regular Growth',
                                  textAlign:
                                  TextAlign.center, // Apply text alignment here
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF0f625c),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                color: Color(0xFFe5e5e5),
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Balance Units',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '7,534.163',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'NAV',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '97.2490',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Market Value',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF8c8c8c),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '7,32,690',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF303131),
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
                        )
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Table(

                        border: TableBorder(
                          // Top border
                          // Bottom border
                          left: BorderSide.none, // No left border
                          right: BorderSide.none, // No right border
                          horizontalInside: BorderSide(color: Colors.grey), // Borders between rows
                          verticalInside: BorderSide(color: Colors.grey), // No borders between columns
                        ), // Adds a border to the table
                        columnWidths: const {
                          0: FlexColumnWidth(5.2), // Adjust the width of each column
                          1: FlexColumnWidth(3.6),
                          2: FlexColumnWidth(5.2),
                          3: FlexColumnWidth(4.9),
                          4: FlexColumnWidth(5.5),
                        },
                        children: [
                          // Table header row
                          TableRow(
                            decoration: BoxDecoration(color: Color(0xFFdceefc)), // Highlight header
                            children: [
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Date',
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xFF0f625c)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Type',
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xFF0f625c)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Amount',
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xFF0f625c)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Units',
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xFF0f625c)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Balance',
                                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xFF0f625c)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Table data rows
                          TableRow(
                            decoration: BoxDecoration(color: Colors.white),
                            children: [
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('27/05/21',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('PUR',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1,49,999',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1807.139',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('7534.163',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(color: Colors.white),
                            children: [
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('27/05/21',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('PUR',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1,49,999',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ), SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1807.139',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ), SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('7534.163',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(color: Colors.white),
                            children: [
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('27/05/21',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('PUR',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1,49,999',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1807.139',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('7534.163',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(color: Colors.white),
                            children: [
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('27/05/21',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('PUR',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1,49,999',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('1807.139',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),SizedBox(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('7534.163',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 13),),
                                ),
                              ),
                            ],
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
