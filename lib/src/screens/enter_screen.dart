import 'package:cortana_starting_desktop/src/screens/widget/pulsing_circle_widget.dart';
import 'package:flutter/material.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          // OPTION BUTTON
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 14, top: 15),
                  child: Text(
                    '. . .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          // ANIMATION CIRCLE
          const PulsingCircleWidget(),
          const SizedBox(height: 100),
          const Text(
            'Entrar na Cortana',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          // IMAGE
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Image.asset('assets/cortana_enter.png', scale: 1.5),
          ),
          // BUTTON
          InkWell(
            onTap: () {},
            // highlightColor: Colors.black.withOpacity(0.5),
            child: Container(
              width: 220,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Entrar',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Para ter a melhor experiência, use sua conta corporativa ou de estudante',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5)),
            ),
          ),
          const SizedBox(height: 100),
          // const Expanded(flex: 2, child: SizedBox()),
          const Text(
            'Quando estiver conectado, A Cortana aprenderá a atender você melhor usando dados como pesquisas, calendário, contatos e localização',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Politica de Privacidade da Microsoft',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
