import 'package:flutter/material.dart';
import 'package:web_sait/widgets/app_bar_widget.dart';
import 'package:intl/intl.dart';

class StudentRegisterView extends StatefulWidget {
  const StudentRegisterView({Key? key}) : super(key: key);

  @override
  _StudentRegisterViewState createState() => _StudentRegisterViewState();
}

class _StudentRegisterViewState extends State<StudentRegisterView> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  int? _genderValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: AppBar(
          toolbarHeight: 65,
          title: const AppBarWidget(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 70),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_image.png'),
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xff4224DB),
                          child: Text(
                            "АЭ",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 43,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 36),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Акунжанов Эрнист",
                              style: TextStyle(
                                letterSpacing: 1.5,
                                color: Color(0xff000000),
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "email@gmail.com",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 145, right: 498),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffffffff),
                              hintText: 'Атыңыз*',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffffffff),
                              hintText: 'Фамиляңыз*',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller:
                                dateinput, //editing controller of this TextField
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xffffffff),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.calendar_today),
                              ), //icon of text field
                              hintText:
                                  'Туулган күнүңүз*', //label text of field
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            readOnly:
                                true, //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    1950), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime.now(),
                              );

                              if (pickedDate != null) {
                                print(
                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate =
                                    DateFormat('dd-MM-yyyy').format(pickedDate);
                                print(
                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                //you can implement different kind of Date Format here according to your requirement

                                setState(() {
                                  dateinput.text =
                                      formattedDate; //set output date to TextField value.
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                          ),
                          const SizedBox(height: 30),
                          const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffffffff),
                              hintText: 'E-mail адрес*',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffffffff),
                              hintText: 'Телефон номериңиз*',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      activeColor: const Color(0xff4224DB),
                                      value: 0,
                                      groupValue: _genderValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _genderValue = value;
                                        });
                                      }),
                                  const Text(
                                    'Аял',
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Row(
                                children: [
                                  Radio(
                                      activeColor: const Color(0xff4224DB),
                                      value: 1,
                                      groupValue: _genderValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _genderValue = value;
                                        });
                                      }),
                                  const Text(
                                    'Эркек',
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4224DB),
                              fixedSize: const Size(170, 60),
                            ),
                            child: const Center(
                              child: Text(
                                'Сактоо',
                                style: TextStyle(
                                  fontSize: 16.44,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 340,
              color: const Color(0xff000000),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 320,
                  left: 320,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Logo',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 54),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Категориялар',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Контактылар',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Биз жөнүндө',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Төлөмдөр',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Байланышуу',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 58),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/instagram.png'),
                        ),
                        const SizedBox(width: 29),
                        InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/whatsapp.png'),
                        ),
                        const SizedBox(width: 29),
                        Row(
                          children: [
                            Container(
                              width: 335,
                              height: 50.41,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: const Color(0xffffffff),
                                width: 2,
                              )),
                              child: const TextField(
                                cursorColor: Color(0xffffffff),
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 25,
                                    // right: 25,
                                  ),
                                  hintText: 'E-mail',
                                  hintStyle: TextStyle(
                                    color: Color(0xff777676),
                                    fontSize: 19.18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 193,
                                height: 50.41,
                                decoration: const BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Катталуу',
                                    style: TextStyle(
                                      color: Color(0xff666666),
                                      fontSize: 20.93,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
