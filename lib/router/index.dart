import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/index.dart';
import 'package:flutter_demo/views/index.dart';
import 'package:flutter_demo/views/other/other_page.dart';
import 'package:go_router/go_router.dart';
import 'package:page_animation_transition/animations/bottom_to_top_faded_transition.dart';
import 'package:sp_util/sp_util.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';

class RouterUtil {
  // 是否登录
  static bool getLoginState() => SpUtil.getString('token') != '';

  static final GoRouter router = GoRouter(
    navigatorKey: NavigatorProvider.navigatorKey,
    initialLocation: '/index',
    routes: [
      GoRoute(
        /**
         * 导航
         * GoRouter.of(context).go 丢弃当前路由跳转到目标路由,如果当前路由非目标路由子路由
         * GoRouter.of(context).push 将目标路由添加到现有路由上面，保留路由堆栈
         */
        path: '/index',
        // 重定向
        redirect: (BuildContext context, GoRouterState state) {
          return getLoginState() ? null : '/login';
        },
        // 自定义页面动画
        pageBuilder: (BuildContext context, GoRouterState state) {
          final String index = state.queryParams['index'] ?? '0';
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: RootPage(tabbarIndex: int.parse(index)),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                        .chain(CurveTween(curve: Curves.ease))
                        .animate(animation),
                child: FadeTransition(
                  opacity: Tween<double>(begin: 0.1, end: 1)
                      .chain(CurveTween(curve: Curves.easeOut))
                      .animate(animation),
                  child: child,
                ),
              );
            },
          );
        },
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
        // pageBuilder: (context, state) {
        //   return const MaterialPage(
        //     child: LoginPage(),
        //     fullscreenDialog: true,
        //   );
        // },
      ),
      GoRoute(
        path: '/home',
        /**
         *  获取参数  
         *   -指定路径参数 /users/:userId => UserScreen(id: state.params['userId'])
         *   -查询字符串参数 /users?filter=admins => UsersScreen(filter: state.queryParams['filter'])
         */
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage<void>(
            child: HomePage(id: state.queryParams['id']),
            transitionsBuilder: RightToLeftFadedTransition().animate,
          );
        },
      ),
      GoRoute(
        path: '/produce',
        pageBuilder: (context, state) => const CupertinoPage(
          child: ProducePage(),
        ),
      ),
      GoRoute(
        path: '/other',
        pageBuilder: (context, state) => const CupertinoPage(
          child: OtherPage(),
        ),
        routes: [
          GoRoute(
            path: 'scan',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage<void>(
                child: const ScanPage(),
                transitionsBuilder: BottomToTopFadedTransition().animate,
              );
            },
          ),
          GoRoute(
            path: 'refresh',
            pageBuilder: (context, state) => const CupertinoPage(
              child: RefreshPage(),
            ),
          ),
          GoRoute(
            path: 'animation',
            pageBuilder: (context, state) =>
                const CupertinoPage(child: AnimationPage()),
            routes: [
              GoRoute(
                path: '1-1',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage11(),
                ),
              ),
              GoRoute(
                path: '1-2',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage12(),
                ),
              ),
              GoRoute(
                path: '1-3',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage13(),
                ),
              ),
              GoRoute(
                path: '1-4',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage14(),
                ),
              ),
              GoRoute(
                path: '1-5',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage15(),
                ),
              ),
              GoRoute(
                path: '1-6',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage16(),
                ),
              ),
              GoRoute(
                path: '2-1',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage21(),
                ),
              ),
              GoRoute(
                path: '2-2',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage22(),
                ),
              ),
              GoRoute(
                path: '2-3',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage23(),
                ),
              ),
              GoRoute(
                path: '2-4',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage24(),
                ),
              ),
              GoRoute(
                path: '2-5',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage25(),
                ),
              ),
              GoRoute(
                path: '2-6',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage26(),
                ),
              ),
              GoRoute(
                path: '2-7',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage27(),
                ),
              ),
              GoRoute(
                path: '3-2',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage32(),
                ),
              ),
              GoRoute(
                path: '3-3',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage33(),
                ),
              ),
              GoRoute(
                path: '3-4',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: AnimationPage34(),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'scrollable',
            pageBuilder: (context, state) => const CupertinoPage(
              child: ScrollablePage(),
            ),
            routes: [
              GoRoute(
                path: '1-1',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage11(),
                ),
              ),
              GoRoute(
                path: '1-2',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage12(),
                ),
              ),
              GoRoute(
                path: '1-3',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage13(),
                ),
              ),
              GoRoute(
                path: '1-4',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage14(),
                ),
              ),
              GoRoute(
                path: '1-5',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage15(),
                ),
              ),
              GoRoute(
                path: '1-6',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage16(),
                ),
              ),
              GoRoute(
                path: '1-7',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: ScrollablePage17(),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'sliver',
            pageBuilder: (context, state) => const CupertinoPage(
              child: SliverPage(),
            ),
            routes: [
              GoRoute(
                path: '1-1',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage11(),
                ),
              ),
              GoRoute(
                path: '1-2',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage12(),
                ),
              ),
              GoRoute(
                path: '1-3',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage13(),
                ),
              ),
              GoRoute(
                path: '1-4',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage14(),
                ),
              ),
              GoRoute(
                path: '1-5',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage15(),
                ),
              ),
              GoRoute(
                path: '1-6',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage16(),
                ),
              ),
              GoRoute(
                path: '1-7',
                pageBuilder: (context, state) => const CupertinoPage(
                  child: SliverPage17(),
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}
