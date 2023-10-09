// ignore_for_file: file_names

import 'package:dream11/registerAndPlayScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double width = 0;
  double height = 0;
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            fbGoogle(),
            const SizedBox(height: 20),
            or(),
            const SizedBox(height: 20),
            mobile(),
            const SizedBox(height: 20),
            certify(),
            const SizedBox(height: 30),
            nextBtn(context),
            const SizedBox(height: 10),
            reg(),
          ],
        ),
      ),
    );
  }

  Widget fbGoogle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/facebook.png",
                  height: 22,
                ),
                const SizedBox(width: 15),
                const Text(
                  "FACEBOOK",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/search.png",
                  height: 22,
                ),
                const SizedBox(width: 15),
                const Text(
                  "GOOGLE",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget or() {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 100.0, right: 15.0),
          child: const Divider(
            color: Colors.grey,
            height: 10,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey[100],
        ),
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text("OR"),
        ),
      ),
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 15.0, right: 100.0),
          child: const Divider(
            color: Colors.grey,
            height: 10,
          ),
        ),
      ),
    ]);
  }

  Widget mobile() {
    return Container(
      color: Colors.grey[100],
      child: const TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 20),
          hintText: 'Email or mobile no.',
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }

  Widget certify() {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: Checkbox(
            splashRadius: 18,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            side: MaterialStateBorderSide.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return const BorderSide(color: Colors.green);
                }
                return const BorderSide(
                  width: 2,
                  color: Color(0xffbdbdbd),
                );
              },
            ),
            checkColor: Colors.white,
            activeColor: Colors.green,
            value: valuefirst,
            onChanged: (value) {
              setState(() {
                valuefirst = value!;
              });
            },
          ),
        ),
        const Text(
          "I certify that I am above 18 years.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget nextBtn(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xffd6d6d6)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
              // side: BorderSide(color: Colors.red),
            ),
          ),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const RegisterAndPlay()),
          // );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget reg() {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: 4),
        const Text(
          "Not a member?",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        const SizedBox(height: 2),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterAndPlay()),
            );
          },
          child: const Text(
            "Register",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
