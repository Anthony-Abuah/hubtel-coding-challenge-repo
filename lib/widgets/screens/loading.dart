import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading( {super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  _LoadingState();

  void setupWorldTime() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacementNamed(
      context, "/payment_page",
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}
