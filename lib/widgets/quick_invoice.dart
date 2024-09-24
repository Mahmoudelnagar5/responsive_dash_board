import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_backgrond_container.dart';
import 'package:responsive_dash_board/widgets/latest_transction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1f1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
