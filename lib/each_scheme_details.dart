import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'each_fund_investment_detils.dart';

class eachSchemeDetails extends StatefulWidget {
  const eachSchemeDetails({super.key});

  @override
  State<eachSchemeDetails> createState() => _eachSchemeDetailsState();
}

class _eachSchemeDetailsState extends State<eachSchemeDetails>{
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
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between the logo and buttons
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
                          minimumSize: Size(20, 20), // Adjust clickable area to match image size
                          padding: EdgeInsets.zero,  // Remove padding
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink touch area
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
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0,bottom: 20,left: 15,right: 15),
                        child: Column(
                          children: [
                        const SizedBox(height: 20),

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
                            textAlign: TextAlign.center, // Apply text alignment here
                            style: GoogleFonts.poppins(
                              color: Color(0xFF0f625c),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 3, // Adjust elevation as needed
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50), // Match container's border radius
                                    ),
                                    backgroundColor: Colors.white, // Match container's color
                                  ),
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                                    // Define the action for the button here
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const familyPortfolioPage()));
                                  },
                                  child: Text('Equity',style: GoogleFonts.poppins(
                                    color: Color(0xFF8c8c8c),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 3, // Adjust elevation as needed
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50), // Match container's border radius
                                    ),
                                    backgroundColor: Colors.white, // Match container's color
                                  ),
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                                    // Define the action for the button here
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const familyPortfolioPage()));
                                  },
                                  child: Text('ELSS',style: GoogleFonts.poppins(
                                    color: Color(0xFF8c8c8c),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Gain/Loss',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontSize: 14,fontWeight: FontWeight.w500)),
                                Row(
                                  children: [
                                    Icon(Icons.arrow_upward,color: Color(0xFF09a99d),size: 15,),
                                    Text('2,32,690',style: GoogleFonts.poppins(
                                      color: Color(0xFF09a99d),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Folio No.',style: GoogleFonts.poppins(
                                  color: Color(0xFF8c8c8c),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('xxxx7/73',style: GoogleFonts.poppins(
                                  color: Color(0xFF303131),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Holding Pattern',style: GoogleFonts.poppins(
                                  color: Color(0xFF8c8c8c),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('Single',style: GoogleFonts.poppins(
                                  color: Color(0xFF303131),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Joint Holder',style: GoogleFonts.poppins(
                                  color: Color(0xFF8c8c8c),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('',style: GoogleFonts.poppins(
                                  color: Color(0xFF303131),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Portfolio Value',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF648683),
                                      ),
                                    ),
                                    Text('₹26,57,633',
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
                                    Text('Overal Gain %',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF648683),
                                      ),
                                    ),
                                    Text('₹7,07,633',
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
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          color: Color(0xFFd7d7d7),
                          height: 1,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text('Abs. Ret.:',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 15,fontWeight: FontWeight.w400),),
                                  Text(' 27.29%',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 15,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              child: Row(
                                children: [
                                  Text('XIRR:',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 15,fontWeight: FontWeight.w400),),
                                  Text(' 10.54%',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 15,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                          ],
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
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           // Adjust elevation as needed
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                50), // Match container's border radius
                          ),
                          backgroundColor:
                          Colors.white,
                          // Match container's color
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const eachFundInvstDtls()));
                          // Define the action for the button here
                        },
                        child: Text('Click Here For More Details',style: GoogleFonts.poppins(color: Color(0xFF09a99d),fontWeight: FontWeight.w500,fontSize: 14),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        spacing: 10,
                        children: [
                          SizedBox(
                            width: 165,
                            child: Column(
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                  SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFFf9eddb),
                                      ),
                                      child: Center(child: Image.asset('assets/images/ech_dlr.png')),// Replace 'Colors.red' with your desired color
                                    ),
                                  ),
                                    Text('Invested',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 16,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Lumsum',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('5,00,000',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('SIP',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Switch-Ins',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Dividends',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,bottom: 10),
                                  color: Color(0xFFcbd2d0),
                                  height: 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Text('5,00,000',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 168,width: 1,child: Container(
                            color: Color(0xFFcbd2d0), // Replace 'Colors.red' with your desired color
                          ),),
                          SizedBox(
                            width: 165,
                            child: Column(
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                    SizedBox(
                                      width: 48,
                                      height: 48,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xFFb0daf4),
                                        ),
                                        child: Center(child: Image.asset('assets/images/inv_tx.png')),// Replace 'Colors.red' with your desired color
                                      ),
                                    ),
                                    Text('Received',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 16,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Dividends',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Redemptions',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Switch-Outs',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('SWP',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontWeight: FontWeight.w500,fontSize: 14),),
                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,bottom: 10),
                                  color: Color(0xFFcbd2d0),
                                  height: 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Text('0',style: GoogleFonts.poppins(color: Color(0xFF303131),fontWeight: FontWeight.w500,fontSize: 14),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          spacing: 20,
                          children: [
                            Column(
                              children: [
                              Text('Balance\nUnits',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontSize: 14,fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text('7,534,163',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 14,fontWeight: FontWeight.w600),),
                              ],
                            ),
                            Column(
                              children: [
                              Text('Average\nNAV',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontSize: 14,fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text('6,63,600',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 14,fontWeight: FontWeight.w600),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Cost\nAmount',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontSize: 14,fontWeight: FontWeight.w500),),
                                SizedBox(height: 5,),
                                Text('5,00,000',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 14,fontWeight: FontWeight.w600),),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Present\nValue',style: GoogleFonts.poppins(color: Color(0xFF8c8c8c),fontSize: 14,fontWeight: FontWeight.w500),),
                                SizedBox(height: 5,),
                                Text('7,32,690',style: GoogleFonts.poppins(color: Color(0xFF0f625c),fontSize: 14,fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20,top: 20),
                      child: Wrap(
                        spacing: 12,
                        runSpacing: 28,
                        children: [
                          InkWell(
                            onTap: () {
                              // Define your action here
                              print("New Fund Offer button pressed");
                            },
                            borderRadius: BorderRadius.circular(8), // Add ripple effect matching the button shape
                            child: Container(
                              width: 100,
                              padding: const EdgeInsets.symmetric(vertical: 10), // Optional padding
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFb2daf4),
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset('assets/images/nw_fnd.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Realized Gain',
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

                          Container(width: 1,height: 100,color: Color(0xFFc7d1d0),),
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
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset('assets/images/thm_invst.png'),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Unrealized Gain'
                                    ,style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),fontSize: 14,fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(width: 1,height: 100,color: Color(0xFFc7d1d0),),
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
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Image.asset('assets/images/int_mtfnd.png'),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Overall Gain',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF0f625c),fontSize: 14,fontWeight: FontWeight.w400,
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
                    SizedBox(height: 20),
                    // Add more widgets here
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
            color: Colors.white,
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ftr_hmm.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text('Home',style: GoogleFonts.poppins(
                          color: Color(0xFF648683),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ftr_prtflo.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text('Portfolio',style: GoogleFonts.poppins(
                          color: Color(0xFF648683),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ftr_invst.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text('Invest',style: GoogleFonts.poppins(
                          color: Color(0xFF648683),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/rptt.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text('Report',style: GoogleFonts.poppins(
                          color: Color(0xFF648683),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/stng.png',
                          // Adjust as needed
                          fit: BoxFit.contain, // Adjust as needed
                        ),
                        Text('Settings',style: GoogleFonts.poppins(
                          color: Color(0xFF648683),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),
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