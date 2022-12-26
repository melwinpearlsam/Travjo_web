import 'package:flutter/material.dart';
import 'package:travjo_web/screens/home.dart';
import 'package:travjo_web/screens/treasure/gender_box.dart';

class TreasureHome extends StatefulWidget {
  const TreasureHome({Key? key}) : super(key: key);

  @override
  State<TreasureHome> createState() => _TreasureHomeState();
}

class _TreasureHomeState extends State<TreasureHome> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();
  final addressController = TextEditingController();

  String? gender;
  bool male = false;
  bool female = false;
  bool other = false;

  bool genderPickCheck() {
    if (!male && !female && !other) {
      return false;
    } else {
      return true;
    }
  }

  DateTime? _selectedDate;

  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1930),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        dobController.text =
            '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: navBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/treasure.png',
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.dstIn,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 1000,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        'images/pana.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Evenet Registration',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 148, 26, 17),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Enter your details here'),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  labelText: 'Name',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: phoneController,
                              decoration: const InputDecoration(
                                  labelText: 'Mobile Number',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'Gender',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              children: [
                                GenderBox(
                                  value: female,
                                  name: 'Female',
                                  onchnaged: (v) {
                                    gender = 'Female';
                                    if (gender == 'Female') {
                                      other = false;
                                      male = false;
                                    }
                                    female = v!;

                                    setState(() {});
                                  },
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                GenderBox(
                                  value: male,
                                  name: 'Male',
                                  onchnaged: (v) {
                                    gender = 'Male';
                                    if (gender == 'Male') {
                                      other = false;
                                      female = false;
                                    }
                                    male = v!;
                                    setState(() {});
                                  },
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                GenderBox(
                                  value: other,
                                  name: 'Other',
                                  onchnaged: (v) {
                                    gender = 'Other';
                                    if (gender == 'Other') {
                                      female = false;
                                      male = false;
                                    }
                                    other = v!;

                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'Date of Birth',
                              style: TextStyle(fontSize: 18),
                            ),
                            TextFormField(
                              readOnly: true,
                              onTap: () {
                                _pickDateDialog();
                              },
                              controller: dobController,
                              decoration: const InputDecoration(
                                  hintText: 'dd/mm/yyyy',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Address',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: addressController,
                              decoration: const InputDecoration(
                                  labelText: 'Address',
                                  labelStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                child: const Text(
                                  'Submit',
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFFC5192D),
                                    onPrimary: Colors.white,
                                    minimumSize:
                                        const Size(double.infinity, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
