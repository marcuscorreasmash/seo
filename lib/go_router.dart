import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_seo/meta_seo.dart';
import 'first_screen.dart';
import 'second_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.facebookAppID(facebookAppID: '907392233836786');

          meta.description(description: 'First Screen Description');
          meta.keywords(keywords: 'Page 1, Flutter, Dart, SEO, Meta, Web');

          meta.ogImage(
              ogImage:
                  'https://www.infomoney.com.br/wp-content/uploads/2023/03/5A36E1E1-8799-49E0-90D3-46C54D06CB9C.jpeg?resize=916%2C515&quality=50&strip=all');
          meta.ogDescription(ogDescription: 'First Screen OG');
          meta.ogTitle(ogTitle: 'First Screen');

          meta.twitterDescription(twitterDescription: 'First Screen OG');
          meta.twitterImage(
              twitterImage:
                  'https://www.infomoney.com.br/wp-content/uploads/2023/03/5A36E1E1-8799-49E0-90D3-46C54D06CB9C.jpeg?resize=916%2C515&quality=50&strip=all');
          meta.twitterTitle(twitterTitle: 'First Screen');
        }

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        if (kIsWeb) {
          MetaSEO meta = MetaSEO();

          meta.facebookAppID(facebookAppID: '907392233836786');
          meta.description(description: 'Second Screen Description');
          meta.keywords(keywords: 'Page 2, Flutter, Dart, SEO, Meta, Web');

          meta.ogImage(
              ogImage: 'https://smash.imgix.net/partners_new/ifood.png');
          meta.ogDescription(ogDescription: 'Second Screen OG');
          meta.ogTitle(ogTitle: 'Second Screen');

          meta.twitterDescription(twitterDescription: 'Second Screen OG');
          meta.twitterImage(
              twitterImage: 'https://smash.imgix.net/partners_new/ifood.png');
          meta.twitterTitle(twitterTitle: 'Second Screen');
        }

        return const SecondScreen();
      },
    ),
  ],
);
