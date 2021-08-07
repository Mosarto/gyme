import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

import 'package:gyme/Data/data.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> selected = [
    true,
    false,
    false,
  ];
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xffF8A8FF),
      Color(0xff6155ED),
    ],
    begin: Alignment.center,
    end: Alignment.topRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 550.0, 70.0));

  final Shader linearGradientmobile = LinearGradient(
    colors: <Color>[
      Color(0xffF8A8FF),
      Color(0xff6155ED),
    ],
    begin: Alignment.center,
    end: Alignment.topRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    ImageProvider backgroundImage = AssetImage('assets/imgs/fundo.png');
    backgroundImage.resolve(createLocalImageConfiguration(context));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: backgroundImage,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                MediaQuery.of(context).size.width >= 430
                    ? Positioned(
                        right: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 1.65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/man.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      )
                    : Positioned(
                        right: 0,
                        child: Container(
                          height: 940,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/imgs/man.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                Container(
                  height: MediaQuery.of(context).size.width >= 430
                      ? MediaQuery.of(context).size.height
                      : 940,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width >= 430 ? 30 : 10,
                    right: MediaQuery.of(context).size.width >= 430 ? 120 : 30,
                    left: MediaQuery.of(context).size.width >= 430 ? 120 : 30,
                    bottom: MediaQuery.of(context).size.width >= 430 ? 30 : 0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          print(MediaQuery.of(context).size.width);
                        },
                        child: Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/imgs/logo.png',
                              ),
                              Image.asset(
                                'assets/imgs/menu.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'BUILD',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: MediaQuery.of(context).size.width >= 430
                              ? 84
                              : 54,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      MediaQuery.of(context).size.width >= 430
                          ? Text(
                              'YOUR BODY',
                              style: TextStyle(
                                fontSize: 116,
                                height: 1,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                foreground: Paint()..shader = linearGradient,
                              ),
                            )
                          : Container(
                              width: MediaQuery.of(context).size.width,
                              child: AutoSizeText(
                                'YOUR BODY',
                                style: TextStyle(
                                  height: 1,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 54,
                                  fontFamily: 'Montserrat',
                                  foreground: Paint()
                                    ..shader = linearGradientmobile,
                                ),
                                minFontSize: 54,
                                maxLines: 2,
                              ),
                            ),
                      SizedBox(height: 20),
                      Container(
                        height: 80,
                        width: 352,
                        child: Text(
                          'Fitness isn’t always about greatness. It’s about consistency. Consistent hard work, healthy will come.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width >= 430
                                ? 16
                                : 14,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 85,
                        width: MediaQuery.of(context).size.width >= 430
                            ? 331
                            : MediaQuery.of(context).size.width,
                        child: MediaQuery.of(context).size.width >= 430
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 110,
                                    child: Column(
                                      children: [
                                        Text(
                                          '15',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Workouts',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 0.5,
                                    height: 30,
                                    color: Color(0xffECEEFF),
                                  ),
                                  Container(
                                    width: 110,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '240',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Minutes',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 0.5,
                                    height: 30,
                                    color: Color(0xffECEEFF),
                                  ),
                                  Container(
                                    width: 110,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Professional \n mentor',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 110,
                                      child: Column(
                                        children: [
                                          Text(
                                            '15',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 40,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Workouts',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 0.5,
                                    height: 30,
                                    color: Color(0xffECEEFF),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '240',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 40,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Minutes',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 0.5,
                                    height: 30,
                                    color: Color(0xffECEEFF),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '10',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 40,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Professional \n mentor',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                      MediaQuery.of(context).size.width >= 430
                          ? Expanded(
                              flex: 4,
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Start your journey',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            height: 24,
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              'assets/imgs/arrow.png',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(
                                      flex: 2,
                                    ),
                                    for (final traninglist
                                        in traninglistadatas) ...[
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: InkWell(
                                            onTap: () {
                                              print(MediaQuery.of(context)
                                                  .size
                                                  .height);
                                              setState(() {
                                                select(
                                                  int.parse(
                                                      '${traninglist.index}'),
                                                );
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 265),
                                              curve: Curves.easeInSine,
                                              height: 85,
                                              margin: MediaQuery.of(context)
                                                          .size
                                                          .height >=
                                                      655
                                                  ? EdgeInsets.only(right: 10)
                                                  : EdgeInsets.only(
                                                      right: 10,
                                                      top: 10,
                                                      bottom: 10),
                                              padding: MediaQuery.of(context)
                                                          .size
                                                          .height >=
                                                      650
                                                  ? EdgeInsets.all(20)
                                                  : EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: LinearGradient(
                                                  colors: selected[int.parse(
                                                              '${traninglist.index}')] ==
                                                          true
                                                      ? ative
                                                      : off,
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 5,
                                                            child: AutoSizeText(
                                                              '${traninglist.name}',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 14,
                                                                color: selected[int.parse(
                                                                            '${traninglist.index}')] ==
                                                                        true
                                                                    ? Color(
                                                                        0xffFFFFFF)
                                                                    : Color(
                                                                        0xff12041E),
                                                              ),
                                                              minFontSize: 8,
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ),
                                                          Spacer(
                                                            flex: 1,
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            child: Image.asset(
                                                              'assets/imgs/star.png',
                                                            ),
                                                          ),
                                                          SizedBox(width: 5),
                                                          Expanded(
                                                            child: AutoSizeText(
                                                              '${traninglist.stars}',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16,
                                                                color: selected[int.parse(
                                                                            '${traninglist.index}')] ==
                                                                        true
                                                                    ? Color(
                                                                        0xffFFFFFF)
                                                                    : Color(
                                                                        0xff12041E),
                                                              ),
                                                              minFontSize: 10,
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  MediaQuery.of(context)
                                                              .size
                                                              .height >=
                                                          655
                                                      ? Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      AutoSizeText(
                                                                    '${traninglist.level}',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      fontSize:
                                                                          14,
                                                                      color: selected[int.parse('${traninglist.index}')] ==
                                                                              true
                                                                          ? Color(
                                                                              0xffCBC7FD)
                                                                          : Color(
                                                                              0xffC2BFE8),
                                                                    ),
                                                                    minFontSize:
                                                                        8,
                                                                    maxLines: 1,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      : SizedBox(),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              height: 400,
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Start your journey',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          height: 24,
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'assets/imgs/arrow.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  for (final traninglist
                                      in traninglistadatas) ...[
                                    InkWell(
                                      onTap: () {
                                        print(
                                            MediaQuery.of(context).size.height);
                                        setState(() {
                                          select(
                                            int.parse('${traninglist.index}'),
                                          );
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 265),
                                        curve: Curves.easeInSine,
                                        height: 85,
                                        margin: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: LinearGradient(
                                            colors: selected[int.parse(
                                                        '${traninglist.index}')] ==
                                                    true
                                                ? ative
                                                : off,
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 5,
                                                      child: AutoSizeText(
                                                        '${traninglist.name}',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14,
                                                          color: selected[int.parse(
                                                                      '${traninglist.index}')] ==
                                                                  true
                                                              ? Color(
                                                                  0xffFFFFFF)
                                                              : Color(
                                                                  0xff12041E),
                                                        ),
                                                        minFontSize: 8,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                    Spacer(
                                                      flex: 1,
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      child: Image.asset(
                                                        'assets/imgs/star.png',
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Expanded(
                                                      child: AutoSizeText(
                                                        '${traninglist.stars}',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16,
                                                          color: selected[int.parse(
                                                                      '${traninglist.index}')] ==
                                                                  true
                                                              ? Color(
                                                                  0xffFFFFFF)
                                                              : Color(
                                                                  0xff12041E),
                                                        ),
                                                        minFontSize: 10,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: AutoSizeText(
                                                        '${traninglist.level}',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14,
                                                          color: selected[int.parse(
                                                                      '${traninglist.index}')] ==
                                                                  true
                                                              ? Color(
                                                                  0xffCBC7FD)
                                                              : Color(
                                                                  0xffC2BFE8),
                                                        ),
                                                        minFontSize: 8,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
