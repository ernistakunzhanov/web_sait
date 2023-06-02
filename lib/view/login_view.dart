import 'package:flutter/material.dart';
import 'package:web_sait/widgets/app_bar_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: AppBar(
          toolbarHeight: 65,
          title: AppBarWidget(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 480,
                    height: 483,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(22.36),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 62,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Катталыңыз',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.9068,
                              color: Color(0xff000000),
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Аты-жөнүңүз',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.9068,
                                color: Color(0xff666666),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1.49,
                                ), //<-- SEE HERE
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffF02E65)), //<-- SEE HERE
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(
                                        255, 66, 125, 145)), //<-- SEE HERE
                              ),
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'E-mail же телефон номериңиз',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.9068,
                                color: Color(0xff666666),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1.49,
                                ), //<-- SEE HERE
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffF02E65)), //<-- SEE HERE
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(
                                        255, 66, 125, 145)), //<-- SEE HERE
                              ),
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Сыр сөз',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.9068,
                                color: Color(0xff666666),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff000000),
                                  width: 1.49,
                                ), //<-- SEE HERE
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffF02E65)), //<-- SEE HERE
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(
                                        255, 66, 125, 145)), //<-- SEE HERE
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4224DB),
                              fixedSize: const Size(356, 44),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Катталуу',
                                style: TextStyle(
                                  fontSize: 14.9068,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffffffff),
                              fixedSize: const Size(356, 44),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 0.75,
                                  color: Color(0xff000000),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            icon: Image.asset('assets/images/google-logo.png'),
                            label: const Text(
                              "Google аркылуу кирүү",
                              style: TextStyle(
                                fontSize: 14.91,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Сиздин профилиңиз барбы?',
                                style: TextStyle(
                                  fontSize: 13.4162,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Кирүү',
                                  style: TextStyle(
                                    fontSize: 13.4162,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 81),
                  Stack(
                    children: [
                      const Positioned(
                        top: 86,
                        left: 175,
                        child: Text(
                          'Сабакты баштоо үчүн катталыңыз',
                          style: TextStyle(
                            letterSpacing: 1.3,
                            fontSize: 21.31,
                            color: Color(0xff4D82BE),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Image.asset('assets/images/object1.png'),
                    ],
                  ),
                ],
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
