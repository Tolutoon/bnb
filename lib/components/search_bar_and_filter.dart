import 'package:flutter/material.dart';

class SearchBarAndFilter extends StatelessWidget {
  const SearchBarAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 27,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black38,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 32,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Where to?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          TextField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Anywhere . Any week . Add guests",
                              hintStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 13,
                              ),
                              isCollapsed: true,
                            ),
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black54,
              ),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.tune,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
