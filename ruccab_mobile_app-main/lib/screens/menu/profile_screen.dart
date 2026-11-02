import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:ruccab/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController universityIDController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode universityIDFocus = FocusNode();
  FocusNode phoneNumberFocus = FocusNode();
  FocusNode fullNameFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  String selectedGender = '';
  String selecteBirthday = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 30,
            color: mainColor,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: mainColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: darkGrey),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                TextFormField(
                  controller: fullNameController,
                  focusNode: fullNameFocus,
                  validator: (value) {},
                  onTapOutside: (event) {
                    fullNameFocus.unfocus();
                  },
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 0.7,
                      ),
                    ),
                    hintText: "Enter your Full Name",
                    hintStyle: TextStyle(
                      color: darkGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                TextFormField(
                  controller: phoneNumberController,
                  focusNode: phoneNumberFocus,
                  validator: (value) {},
                  onTapOutside: (event) {
                    phoneNumberFocus.unfocus();
                  },
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 0.7,
                      ),
                    ),
                    hintText: "Enter your Phone Number",
                    hintStyle: TextStyle(
                      color: darkGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "University ID",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                TextFormField(
                  controller: universityIDController,
                  focusNode: universityIDFocus,
                  validator: (value) {},
                  onTapOutside: (event) {
                    universityIDFocus.unfocus();
                  },
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 0.7,
                      ),
                    ),
                    hintText: "Enter your University ID",
                    hintStyle: TextStyle(
                      color: darkGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "University ID",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  focusNode: emailFocus,
                  validator: (value) {},
                  onTapOutside: (event) {
                    emailFocus.unfocus();
                  },
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColor,
                        width: 0.7,
                      ),
                    ),
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(
                      color: darkGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                PopupMenuButton(
                  color: Colors.white,
                  onSelected: (value) async {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: mainColor,
                        ),
                      ),
                    ),
                    child: Text(
                      selectedGender == ''
                          ? "Enter your Geneder"
                          : selectedGender,
                      style: const TextStyle(
                        color: darkGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        value: 'male',
                        child: Text('Male'),
                      ),
                      const PopupMenuItem(
                        value: 'female',
                        child: Text('Female'),
                      ),
                    ];
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Birthday",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );

                    if (pickedDate != null) {
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        formattedDate != '0000-00-00'
                            ? selecteBirthday = formattedDate
                            : null;
                      });
                    }
                  },
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: mainColor,
                        ),
                      ),
                    ),
                    child: Text(
                      selecteBirthday == '' ? "YYYY-MM-DD" : selecteBirthday,
                      style: const TextStyle(
                        color: darkGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    margin: const EdgeInsets.only(bottom: 40),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: mainColor,
                    ),
                    child: const Text(
                      "Edit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
