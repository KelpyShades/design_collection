import 'package:go_router/go_router.dart';
import 'package:my_designs/components/designs/design.dart';
import 'package:my_designs/components/designs/design2.dart';
import 'package:my_designs/components/designs/design3.dart';
import 'package:my_designs/components/designs/design4.dart';
import 'package:my_designs/components/home/home.dart';

final GoRouter myroutes = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Home(),
  ),
  GoRoute(
    path: '/1',
    builder: (context, state) => const Design1(),
  ),
  GoRoute(
    path: '/2',
    builder: (context, state) => const Design2(),
  ),
  GoRoute(
    path: '/3',
    builder: (context, state) => const Design3(),
  ),
  GoRoute(
    path: '/4',
    builder: (context, state) => const Design4(),
  )
]);
