import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController _controller = TextEditingController();
  GlobalKey _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff6bf1cf),
                    Color(0xff138e9c),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0, left: 155),
              child: IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.white,
                iconSize: 50,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 160.0,
                left: 130,
              ),
              child: Text(
                'heart link',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 230,
              bottom: 130,
              child: Container(
                height: size.height / 1.8,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 60),
                      child: Text(
                        'Enter your credentials',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffb5b5b5),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    buildTextField(
                      controller: controller,
                      hintText: 'Email',
                      key: _formkey,
                      obscureText: false,
                    ),
                    buildTextField(
                      controller: _controller,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Container(
                        height: size.height / 13,
                        width: size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff138e9c),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Log in',
                            style: GoogleFonts.raleway(
                              color: Color(0xff138e9c),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account?',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up now',
                              style: GoogleFonts.raleway(
                                color: Color(0xff138e9c),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildTextField({
  TextEditingController controller,
  String hintText,
  bool obscureText,
  Key key,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20.0,
      left: 30,
      right: 30,
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xffdfe6e9),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Form(
          key: key,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.raleway(),
            ),
            obscureText: obscureText,
          ),
        ),
      ),
    ),
  );
}
