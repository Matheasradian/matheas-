import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 480),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.45,
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/7bca765fe5a39a469d8c82f299bc553e71147552f35b51103207175902ee489f?placeholderIfAbsent=true&apiKey=235cfea05f6643858ffeda5f3fa5ae64',
              fit: BoxFit.contain,
              alignment: Alignment.center,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.error),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/operator_form.dart';
import 'widgets/navigation_bar.dart';
import 'widgets/logo_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFF6A6A6A),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/4babaaab6654c2732eafcaf2d8a4a4869d23fbe9755c67bc4c1d43aa2bf8841e?placeholderIfAbsent=true&apiKey=235cfea05f6643858ffeda5f3fa5ae64',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 121.0,
                            horizontal: 68.0,
                          ),
                          child: Column(
                            children: const [
                              LogoWidget(),
                              SizedBox(height: 67),
                              OperatorForm(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const NavigationBar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class OperatorForm extends StatelessWidget {
  const OperatorForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 265,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFFB5B3B3),
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                labelText: 'NAMA OPERATOR',
                labelStyle: TextStyle(color: Color(0xFFB5B3B3)),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 257,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFFB3B3B3),
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                labelText: 'KODE OPERATOR',
                labelStyle: TextStyle(color: Color(0xFFB3B3B3)),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              ),
            ),
          ),
          const SizedBox(height: 71),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.fromLTRB(19, 9, 19, 16),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.fromLTRB(36, 9, 36, 21),
                ),
                child: const Text(
                  'back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class OperatorForm extends StatelessWidget {
  const OperatorForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 265,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFFB5B3B3),
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                labelText: 'NAMA OPERATOR',
                labelStyle: TextStyle(color: Color(0xFFB5B3B3)),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 257,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFFB3B3B3),
                fontWeight: FontWeight.w300,
              ),
              decoration: const InputDecoration(
                labelText: 'KODE OPERATOR',
                labelStyle: TextStyle(color: Color(0xFFB3B3B3)),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              ),
            ),
          ),
          const SizedBox(height: 71),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.fromLTRB(19, 9, 19, 16),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.fromLTRB(36, 9, 36, 21),
                ),
                child: const Text(
                  'back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.fromLTRB(49, 7, 49, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/31b4352db15df8b789df211e4ab334382094a741e7f751a6cd36047e8694e0cf?placeholderIfAbsent=true&apiKey=235cfea05f6643858ffeda5f3fa5ae64',
            width: 45,
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/1be6ec4534ed8e3dee77f502a0b5ee46bb78e8c6d22d747b03d2f0bd7a10fdf2?placeholderIfAbsent=true&apiKey=235cfea05f6643858ffeda5f3fa5ae64',
            width: 47,
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/0022c23def3c5476b2f3d7726da8d2616c3b62fe4594da553a6ab2ec89f1fdc8?placeholderIfAbsent=true&apiKey=235cfea05f6643858ffeda5f3fa5ae64',
            width: 35,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qr_scanner/widgets/scan_button.dart';
import 'package:qr_scanner/widgets/qr_frame.dart';
import 'package:qr_scanner/widgets/navigation_bar.dart';

class QRScannerScreen extends StatelessWidget {
  const QRScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xFF6A6A6A),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 137, 40, 35),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/background.png',
                              fit: BoxFit.cover,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Scan your QR Code',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                const SizedBox(height: 116),
                                const QRFrame(),
                                const SizedBox(height: 108),
                                const ScanButton(),
                                const SizedBox(height: 26),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 121,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(33, 6, 33, 21),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'back',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const NavigationBar(),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284,
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 42),
      decoration: BoxDecoration(
        color: const Color(0xFFBBB509),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/scan_icon.png',
            width: 35,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 5),
          const Expanded(
            child: Text(
              'Scan QR Code',
              style: TextStyle(
                color: Color(0xFFFEF8F8),
                fontSize: 26,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class QRFrame extends StatelessWidget {
  const QRFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 283,
      padding: const EdgeInsets.all(31),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/frame.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF747474),
      padding: const EdgeInsets.fromLTRB(49, 7, 49, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/nav_icon1.png',
            width: 45,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/nav_icon2.png',
            width: 47,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/nav_icon3.png',
            width: 35,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:equipment_details/widgets/equipment_header.dart';
import 'package:equipment_details/widgets/equipment_info_card.dart';
import 'package:equipment_details/widgets/navigation_bar.dart';

class EquipmentDetailsScreen extends StatelessWidget {
  const EquipmentDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: auto),
          child: Column(
            children: [
              Container(
                color: const Color(0xFF6A6A6A),
                padding: const EdgeInsets.only(bottom: 31),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 32),
                      child: Stack(
                        children: const [
                          EquipmentHeader(),
                          EquipmentInfoCard(),
                          BackButton(),
                          NavigationBar(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class EquipmentHeader extends StatelessWidget {
  const EquipmentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.only(top: 28, bottom: 11),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 12),
              child: Image.asset(
                'assets/logo.png',
                width: 72,
                height: 72,
                fit: BoxFit.contain,
              ),
            ),
            const Expanded(
              child: Text(
                'INTI ENERGI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class EquipmentInfoCard extends StatelessWidget {
  const EquipmentInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 123),
          Image.asset(
            'assets/sensor.png',
            width: 231,
            height: 231,
            fit: BoxFit.contain,
          ),
          const Text(
            'Equipment : Pressure Sensor\nID : 2303431016\nLast Inspection Date : 16/12/2024',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Status : WORKING',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Sensor condition : 40%',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Indicator : Maintenance alert !',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Remaining Useful Life : 336H',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 49),
      margin: const EdgeInsets.only(top: 52),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/nav_icon_1.png',
            width: 45,
            height: 40,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/nav_icon_2.png',
            width: 47,
            height: 43,
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/nav_icon_3.png',
            width: 35,
            height: 40,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 121,
        padding: const EdgeInsets.fromLTRB(36, 11, 36, 19),
        child: const Text(
          'back',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}