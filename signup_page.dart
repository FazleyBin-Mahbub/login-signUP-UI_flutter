import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SIgnUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Nothing to do
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 20),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'What is Your\n      Name?',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Image.asset(
                'assets/name.png',
                height: 350,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: size.height / 11,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                  color: Color(0xffeeeeee),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                    contentPadding: EdgeInsets.only(left: 18, top: 15),
                    hintStyle: GoogleFonts.raleway(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
