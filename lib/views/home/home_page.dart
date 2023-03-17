import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/toast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.id}) : super(key: key);
  final String? id;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        title: const Text(
          '简猪宝',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
          color: const Color.fromRGBO(246, 245, 245, 1),
          width: double.infinity,
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: const [HomeSwiper(), SizedBox(height: 20), HomeWrap()],
          )),
    );
  }
}

class HomeWrap extends StatelessWidget {
  const HomeWrap({
    super.key,
  });

  static const List<Map<String, dynamic>> list = [
    {
      "name": '生产管理',
      "img": 'assets/images/index/type1.png',
      "path": '/pages/produce/index',
      "active": true
    },
    {
      "name": '销售管理',
      "img": 'assets/images/index/type2.png',
      "path": '/pages/sales/index',
      "active": true
    },
    {
      "name": '饲料厂',
      "img": 'assets/images/index/type3.png',
      "path": '/pages/index/index',
      "active": false,
    },
    {
      "name": '物资管理',
      "img": 'assets/images/index/type4.png',
      "path": '/pages/index/index',
      "active": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Wrap(
        runSpacing: 2.w,
        alignment: WrapAlignment.spaceBetween,
        children: list.map((item) {
          return GestureDetector(
            onTap: () {
              if (!item["active"]) {
                ToastUtil.info('暂未开放');
              }
            },
            child: Container(
              width: 169.w,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                children: [
                  Image.asset(
                    item['img'] as String,
                    height: 65.w,
                  ),
                  Text(
                    item['name'] as String,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({
    super.key,
  });
  static const List<Map<String, String>> list = [
    {"image": 'assets/images/index/swiper1.jpg', "title": '核心育种场'},
    {"image": 'assets/images/index/swiper2.jpg', "title": '种猪扩繁场'},
    {"image": 'assets/images/index/swiper3.jpg', "title": '种公猪站'},
    {"image": 'assets/images/index/swiper4.jpg', "title": '无抗饲料厂'},
    {"image": 'assets/images/index/swiper5.jpg', "title": '生猪技术研究院'},
    {"image": 'assets/images/index/swiper6.jpg', "title": '有机肥加工厂'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
      ),
      height: 160.w,
      child: Swiper(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Image.asset(
                list[index]["image"]!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 50.w,
                child: Container(
                  color: const Color.fromARGB(161, 45, 46, 52),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    list[index]["title"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 6,
        autoplay: true,
        loop: false,
        indicatorLayout: PageIndicatorLayout.WARM,
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            size: 8,
            space: 5,
          ),
        ),
      ),
    );
  }
}
