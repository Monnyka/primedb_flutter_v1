import 'package:flutter/material.dart';

import 'constants.dart';

void showLoginBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            width: double.infinity,
            height: 280,
            child: Column(
              children: [
                const SizedBox(width: 20, height: 20),
                const Text(
                  'Start with',
                  style: kBigLabel,
                ),
                Card(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          shadowColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: const Size(double.infinity, 80),
                        ),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'You can sign up or log in with your email address',
                              style: kNormalLabel,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                          shadowColor: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: const Size(double.infinity, 80),
                        ),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Guest',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Use app without authentication',
                              style: kNormalLabel,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ));
      });
  void openLogin() {}
}
