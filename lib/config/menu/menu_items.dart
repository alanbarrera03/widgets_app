import 'package:flutter/material.dart';

class MenuItem{

  final String   title;
  final String   subtitle;  
  final String   link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

  const appMenuItems = <MenuItem>[

    MenuItem(
      title: 'Riverpod Counter',
      subtitle: 'Riverpod introduction',
      link: '/counter-riverpod',
      icon: Icons.announcement_outlined
    ),

    MenuItem(
      title: 'Botones',
      subtitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined
    ),

    MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card
    ),

    MenuItem(
      title: 'ProgressIndicator',
      subtitle: 'Indicadores en pantalla',
      link: '/progress',
      icon: Icons.refresh_outlined
    ),
    MenuItem(
      title: 'Snackbars and dialogs',
      subtitle: 'Indicadores en pantalla',
      link: '/snack',
      icon: Icons.info_outline
    ),
    MenuItem(
      title: 'Animated container',
      subtitle: 'Steful widget animated',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined
    ),
    MenuItem(
      title: 'UI Controls',
      subtitle: 'Series of controls of Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined
    ),
    MenuItem(
      title: 'Aplication Introduction',
      subtitle: 'Little tutorial introduction',
      link: '/tutorial',
      icon: Icons.accessible_rounded
    ),
    MenuItem(
      title: 'InfiniteScroll y Pull',
      subtitle: 'Infinite list and pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded
    ),
    MenuItem(
      title: 'Theme Charge',
      subtitle: 'Change theme of the aplication',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined
    ),

  ];