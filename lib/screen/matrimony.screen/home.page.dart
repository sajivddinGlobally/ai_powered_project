import 'dart:ui';
import 'package:ai_powered_app/screen/matrimony.screen/favourite.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/message.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/particular.home.page.dart';
import 'package:ai_powered_app/screen/matrimony.screen/profile.page.dart';
import 'package:ai_powered_app/screen/providerScreen/searchProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> gridlist = [
    {"imageUrl": "assets/female.png"},
    {"imageUrl": "assets/female2.png"},
  ];
  int tabBottom = 0;
  bool isLocked = true;

  @override
  void initState() {
    super.initState();
    _initSearch();
  }

  Future<void> _initSearch() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    if (token != null) {
      Provider.of<SearchProvider>(context, listen: false).searchProfiles(
        token: token,
        gender: "male",
        ageMin: "18",
        ageMax: "25",
        religion: "Hindu",
        caste: "OBC",
        location: "Delhi",
        education: "BCA",
        occupation: "Engineer",
        page: 1,
        limit: 10,
      );
    } else {
      debugPrint("Token not found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6F8),
      body:
          tabBottom == 0
              ? 
              
              Consumer<SearchProvider>(
  builder: (context, provider, _) {

    if (provider.isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    if (provider.error != null) {
      return Center(child: Text(provider.error!));
    }

    if (provider.results.isEmpty) {
      return Center(child: Text("No profiles found."));
    }

              return    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60.h),
                      Row(
                        children: [
                          SizedBox(width: 24.w),
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xFFFE9F0F),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/rajveer.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: GoogleFonts.gothicA1(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF9A97AE),
                                ),
                              ),
                              Text(
                                "Thane, Maharashtra",
                                style: GoogleFonts.gothicA1(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF030016),
                                  letterSpacing: -1,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: Colors.black12,
                                width: 1.w,
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.notifications_none),
                            ),
                          ),
                          SizedBox(width: 24.w),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Expanded(
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            children: [
                              TabBar(
                                indicatorColor: Color(0xFFFE9F0F),
                                dividerColor: Color(0xFFDADADA),
                                labelColor: Color(0xFFFE9F0F),
                                unselectedLabelColor: Color(0xFF9A97AE),
                                indicatorWeight: 2.w,
                                indicatorSize: TabBarIndicatorSize.tab,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "For You",
                                      style: GoogleFonts.gothicA1(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Nearby",
                                      style: GoogleFonts.gothicA1(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    SingleChildScrollView(
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        padding: EdgeInsets.only(
                                          left: 24.w,
                                          right: 24.w,
                                          bottom: 50.h,
                                        ),
                                        child: GridView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: gridlist.length,
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 20.w,
                                                mainAxisSpacing: 20.h,
                                                childAspectRatio: 0.95,
                                              ),
                                          itemBuilder: (context, index) {
                                            return Container(
                                              padding: EdgeInsets.zero,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15.r),
                                              ),
                                              child: Stack(
                                                children: [
                                                  // 👇 Blur everything below except lock
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          15.r,
                                                        ),
                                                    child:
                                                        isLocked
                                                            ? ImageFiltered(
                                                              imageFilter:
                                                                  ImageFilter.blur(
                                                                    sigmaX: 8,
                                                                    sigmaY: 8,
                                                                  ),
                                                              child: Stack(
                                                                children: [
                                                                  Image.asset(
                                                                    gridlist[index]['imageUrl']
                                                                        .toString(),
                                                                    width:
                                                                        double
                                                                            .infinity,
                                                                    height:
                                                                        double
                                                                            .infinity,
                                                                    fit:
                                                                        BoxFit
                                                                            .cover,
                                                                  ),
                                                                  Image.asset(
                                                                    "assets/femalebgimage.png",
                                                                    width:
                                                                        double
                                                                            .infinity,
                                                                    height:
                                                                        double
                                                                            .infinity,
                                                                    fit:
                                                                        BoxFit
                                                                            .cover,
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                            : Stack(
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15.r,
                                                                      ),
                                                                  child: GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.push(
                                                                        context,
                                                                        CupertinoPageRoute(
                                                                          builder:
                                                                              (
                                                                                context,
                                                                              ) =>
                                                                                  ParticulaHomePage(),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Stack(
                                                                      children: [
                                                                        Image.asset(
                                                                          gridlist[index]['imageUrl']
                                                                              .toString(),
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              double.infinity,
                                                                          fit:
                                                                              BoxFit.cover,
                                                                        ),
                                                                        Image.asset(
                                                                          "assets/femalebgimage.png",
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              double.infinity,
                                                                          fit:
                                                                              BoxFit.cover,
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              15.w,
                                                                          top:
                                                                              15.h,
                                                                          child: Container(
                                                                            padding: EdgeInsets.symmetric(
                                                                              horizontal:
                                                                                  7.w,
                                                                              vertical:
                                                                                  5.h,
                                                                            ),
                                                                            decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(
                                                                                6.r,
                                                                              ),
                                                                              color: Color.fromARGB(
                                                                                100,
                                                                                0,
                                                                                3,
                                                                                22,
                                                                              ),
                                                                            ),
                                                                            child: Row(
                                                                              children: [
                                                                                Image.asset(
                                                                                  "assets/loca.png",
                                                                                  color:
                                                                                      Colors.white,
                                                                                ),
                                                                                SizedBox(
                                                                                  width:
                                                                                      3.w,
                                                                                ),
                                                                                Text(
                                                                                  "2.1km",
                                                                                  style: GoogleFonts.gothicA1(
                                                                                    fontSize:
                                                                                        10.sp,
                                                                                    color:
                                                                                        Colors.white,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          bottom:
                                                                              16.h,
                                                                          left:
                                                                              16.w,
                                                                          child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                "Ananya Deshmukh",
                                                                                style: GoogleFonts.gothicA1(
                                                                                  fontSize:
                                                                                      14.sp,
                                                                                  fontWeight:
                                                                                      FontWeight.w500,
                                                                                  color:
                                                                                      Colors.white,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                "26 years old",
                                                                                style: GoogleFonts.gothicA1(
                                                                                  fontSize:
                                                                                      12.sp,
                                                                                  fontWeight:
                                                                                      FontWeight.w400,
                                                                                  color: Color(
                                                                                    0xFF9A97AE,
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
                                                              ],
                                                            ),
                                                  ),
                                                  if (isLocked)
                                                    Center(
                                                      child: Icon(
                                                        Icons.lock,
                                                        color: Colors.white,
                                                        size: 30.sp,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    ListView.builder(
                                      itemCount: 2,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      padding: EdgeInsets.zero,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            Container(
                                              width: 400,
                                              height: 100,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
    );
  },
)

              : tabBottom == 1
              ? MessagePage()
              : tabBottom == 2
              ? FavouritePage()
              : ProfilePage(),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFE9F0F),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: BottomNavigationBar(
              backgroundColor:
                  Colors.transparent, // Make nav bar background transparent
              elevation: 0, // Optional: remove shadow
              currentIndex: tabBottom,
              onTap: (value) {
                setState(() {
                  tabBottom = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white60,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedLabelStyle: GoogleFonts.gothicA1(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.2,
              ),
              unselectedLabelStyle: GoogleFonts.gothicA1(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.2,
              ),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Message',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'Favourite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
