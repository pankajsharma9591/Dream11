import 'package:flutter/material.dart';

class RegisterAndPlay extends StatefulWidget {
  const RegisterAndPlay({super.key});

  @override
  State<RegisterAndPlay> createState() => _RegisterAndPlayState();
}

class _RegisterAndPlayState extends State<RegisterAndPlay> {
  double width = 0;
  double height = 0;
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Register & Play",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[100],
              child: const TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 20),
                  hintText: 'Enter Mobile Number',
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            const Text(
              "You will receive an OTP for verification",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
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
            ),
            SizedBox(
              width: width,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffd6d6d6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      // side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterAndPlay()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Center(
                child: RichText(
              text: const TextSpan(
                text: "By registering, I agree to Dream11's",
                style: TextStyle(
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                children: [
                  TextSpan(
                    text: 'T&Cs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                ],
              ),
            )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Invited by a friend?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Enter code",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "Already a user?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
