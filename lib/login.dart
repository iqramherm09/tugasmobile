import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              child: Image.asset("assets/images/logo7.png"),
            ),
            Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Color(0xff6BCB77),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Email",
              style: TextStyle(
                color: Color(0xff6BCB77),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Masukkan Email Anda",
                  prefixIcon: Icon(Icons.person),
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password",
              style: TextStyle(
                color: Color(0xff6BCB77),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Container(
              child: TextField(
                obscureText: ishide,
                decoration: InputDecoration(
                    hintText: "Masukkan Password Anda",
                    prefixIcon: Icon(Icons.lock),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (ishide == true) {
                              ishide = false;
                            } else {
                              ishide = true;
                            }
                          });
                        },
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Text(
                "Lupa Password?",
                textAlign: TextAlign.end,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff6BCB77),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: ((context) => hometoko())));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
