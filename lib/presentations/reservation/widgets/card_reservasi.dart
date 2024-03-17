
import 'package:flutter/material.dart';
import 'package:flutter_restopos/core/components/components.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/gen/assets.gen.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_response_model.dart';


class ProductCard extends StatelessWidget {
  final Reservation data;
  final VoidCallback onCartButton;

  const ProductCard({
    super.key,
    required this.data,
    required this.onCartButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.read<CheckoutBloc>().add(CheckoutEvent.addProduct(data));
        // context.read<CheckoutBloc>().add(CheckoutEvent.addItem(data));
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.card),
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                const Spacer(),
                Text(
                  data.reservationCode!,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Flexible(
                //       child: Text(
                //         data.category?.name ?? '-',
                //         style: const TextStyle(
                //           color: AppColors.grey,
                //           fontSize: 10,
                //         ),
                //       ),
                //     ),
                //     Flexible(
                //       child: Text(
                //         data.price!.currencyFormatRp,
                //         style: const TextStyle(
                //           fontWeight: FontWeight.w700,
                //           fontSize: 12,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
