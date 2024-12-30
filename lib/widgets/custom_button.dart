import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: isLoading
                  ? const SizedBox(
                      height: 25,
                      width: 25,
                      child: const CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    )
                  : const Text(
                      'Add',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
        ),
      ),
    );
  }
}
