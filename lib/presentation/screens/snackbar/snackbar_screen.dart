import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text( 'Hola Mundo' ),
      action: SnackBarAction( label: 'Ok!', onPressed: (){} ),
      duration: const Duration( seconds: 2 ),
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar );

  }

  void openDialog( BuildContext context ){

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: ( context ) =>  AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Pariatur reprehenderit consequat proident cupidatat dolor. Officia in proident ut occaecat amet ea ex et minim quis commodo ea. Officia officia ea laboris cupidatat Lorem quis. Sint elit tempor occaecat veniam nostrud laboris et. Aute minim nisi magna ut incididunt labore enim magna do occaecat excepteur quis. Commodo laborum tempor occaecat nostrud in esse.'),
        actions: [

          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),

        ],
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Snackbar and dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [

                    const Text('Lorem quis ad est sunt in qui pariatur aute aute tempor est. Aute reprehenderit cillum id irure culpa tempor proident occaecat mollit labore aliqua officia. Aliqua amet qui ea elit laborum incididunt ex. Qui duis in aute ad ullamco do amet cillum fugiat laboris et exercitation sunt. Dolor sint excepteur et tempor. Qui adipisicing veniam qui ex ea minim. Nulla duis magna cupidatat ea.')

                  ]
                );
              },
              child: const Text( 'Licencias usadas' )
            ),
            FilledButton.tonal(
              onPressed: () => openDialog( context ),
              child: const Text( 'Mostrar diálogo' )
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text( 'Mostrar Snackbar' ),
        icon: const Icon( Icons.remove_red_eye_outlined ),
        onPressed: () => showCustomSnackbar( context ),
      ),

    );
  }
}