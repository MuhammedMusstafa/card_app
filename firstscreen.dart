import 'package:card_app/secondscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  bool ishidenPassword = true;
  static String id = 'FirstScreen';
  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 69, 122),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
            padding: EdgeInsets.only(top: 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pic6.jpg'), fit: BoxFit.cover)),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // icon hazard alarm /-------------------------------------
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/logo3.jpg'),
                  ),
                ),
                // TEXT HAZRD ALARM SYSTEM //-------------------------------
                Text(
                  'Hazard Alarm System',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 170),
                // USER NAME // ---------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'username',
                        prefixIconColor: Colors.white38,
                        prefixIcon: const Icon(Icons.person),
                        hintText: ('Enter Username'),
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 207, 199, 187)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // PASSWORD //--------------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: TextField(
                      obscureText: ishidenPassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIconColor: Colors.white38,
                        prefixIcon: const Icon(Icons.lock),
                        hintText: ('Enter Password'),
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 207, 199, 187)),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                //------------- LOGIN //-------------------------//
                MaterialButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  minWidth: 100,
                  height: 50,
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return SecondScreen();
                    //}));
                    Navigator.pushNamed(context, SecondScreen.id);
                  },
                  child: Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),

                SizedBox(height: 40),

                //------SIGN UP //----------------------------------
                MaterialButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  minWidth: 100,
                  height: 50,
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 90)
              ],
            )),
      ),
    );
  }
}
