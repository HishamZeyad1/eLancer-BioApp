import 'package:bio_screen/widgets/bio_card.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'BIO',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            // color: Colors.blue,
            gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [Colors.blue.shade800, Colors.blue.shade200],
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                  // backgroundImage:AssetImage("images/hisham.jpg")
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Student Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Gemunu',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'eLancer - Flutter Training',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: 'Gemunu',
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 0.7,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: "Email",
                subTitle: 'flutter@eLancer.com',
                traillingIcon: Icons.send,
                marginBottom: 15,
              ),
              BioCard(
                  leadingIcon: Icons.phone_android_outlined,
                  title: "Mobile",
                  subTitle: '+972-592-132-855',
                  traillingIcon: Icons.call),
              Spacer(),
              Text(
                'eLancer - Flutter',
                style: TextStyle(
                  color: Colors.black45,
                  // fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'Gemunu',
                  letterSpacing: 5
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
