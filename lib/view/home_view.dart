import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_sait/widgets/app_bar_widget.dart';
import 'package:web_sait/widgets/custom_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String currentLang = language[0];
  bool? checkBox1 = false;
  bool? checkBox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          title: const AppBarWidget(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Бардык багыттагы курстар',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 63),
                  const DefaultTabController(
                    length: 4,
                    child: TabBar(
                      labelColor: Color(0xff4224DB),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                      unselectedLabelColor: Color(0xff000000),
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                      indicatorColor: Color(0xff4224DB),
                      dividerColor: Color(0xffA4A4A4),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(child: Text('Жаңы курстар')),
                        Tab(child: Text('Популярдуу курстар')),
                        Tab(child: Text('Акциялар')),
                        Tab(child: Text('Кыска мөөнөттүү курстар')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60.99),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 393,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 393,
                              height: 50.41,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: const Color(0xff000000),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: SvgPicture.asset(
                                        'assets/icons/search-grey.svg'),
                                  ),
                                  hintText: 'Курстун аты',
                                  border: const OutlineInputBorder(
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
                            ),
                            const SizedBox(height: 29),
                            const Text(
                              'Окутуу тилин тандаңыз',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff000000),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: const Text(
                                    'Кыргыз тилде',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  leading: Radio(
                                      activeColor: const Color(0xff4224DB),
                                      value: language[0],
                                      groupValue: currentLang,
                                      onChanged: (value) {
                                        setState(() {
                                          currentLang = value.toString();
                                        });
                                      }),
                                ),
                              ],
                            ),
                            ListTile(
                              title: const Text(
                                'Орус тилде',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xff000000),
                                ),
                              ),
                              leading: Radio(
                                  activeColor: const Color(0xff4224DB),
                                  value: language[1],
                                  groupValue: currentLang,
                                  onChanged: (value) {
                                    setState(() {
                                      currentLang = value.toString();
                                    });
                                  }),
                            ),
                            ListTile(
                              title: const Text(
                                'Каалаган тилде',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xff000000),
                                ),
                              ),
                              leading: Radio(
                                  activeColor: const Color(0xff4224DB),
                                  value: language[2],
                                  groupValue: currentLang,
                                  onChanged: (value) {
                                    setState(() {
                                      currentLang = value.toString();
                                    });
                                  }),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Checkbox(
                                    side: const BorderSide(
                                      color: Color(0xff000000),
                                      width: 1.7,
                                    ),
                                    activeColor: const Color(0xff4224DB),
                                    value: checkBox1,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        checkBox1 = value;
                                      });
                                    }),
                                const SizedBox(width: 5),
                                const Text(
                                  'Сертификат менен',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Checkbox(
                                    side: const BorderSide(
                                      color: Color(0xff000000),
                                      width: 1.7,
                                    ),
                                    activeColor: const Color(0xff4224DB),
                                    value: checkBox2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        checkBox2 = value;
                                      });
                                    }),
                                const SizedBox(width: 5),
                                const Text(
                                  'Акысыз',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff4224DB),
                                fixedSize: const Size(192, 45),
                              ),
                              child: const Center(
                                child: Text(
                                  'Издөө',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Column(
                        children: [
                          Row(
                            children: [
                              CustomCard(),
                              SizedBox(width: 30),
                              CustomCard(),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              CustomCard(),
                              SizedBox(width: 30),
                              CustomCard(),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              CustomCard(),
                              SizedBox(width: 30),
                              CustomCard(),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              CustomCard(),
                              SizedBox(width: 30),
                              CustomCard(),
                            ],
                          ),
                        ],
                      ),
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

List<String> language = ['Кыргыз тилде', 'Орус тилде', 'Каалаган тилде'];
