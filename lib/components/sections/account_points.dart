import 'package:bank_app/components/box_card.dart';
import 'package:bank_app/components/color_dot.dart';
import 'package:bank_app/components/content_division.dart';
import 'package:bank_app/themes/themes_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Pontos da conta",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoxCard(boxContent: _AccountPointsContent()),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Pontos totais:"),
        Text(
          "3000",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Text(
          "Objetivos:",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                  color: ThemeColors.accountPoints['freeDelivery'],
                ),
              ),
              const Text("Entrega grátis: 15000pts"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                  color: ThemeColors.accountPoints['streaming'],
                ),
              ),
              const Text("1 mês de streaming: 30000pts"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                  color: ThemeColors.accountPoints['xbox'],
                ),
              ),
              const Text("3 mêses de Xbox Game Pass: 90000pts"),
            ],
          ),
        ),
      ],
    );
  }
}
