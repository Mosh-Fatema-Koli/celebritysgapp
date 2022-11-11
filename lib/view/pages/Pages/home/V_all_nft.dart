import 'package:celebritysgapp/controlleter/nft_controller.dart';
import 'package:celebritysgapp/view/pages/Pages/home/nft_per_person.dart';
import 'package:celebritysgapp/widget/loading/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VNftPage extends StatelessWidget {
  VNftPage({Key? key}) : super(key: key);

  final controller = Get.put(NftController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoading
          ? const Center(
              child: CustomLoadingAPI(),
            )
          : ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.nftModel.nft.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NftPerPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Card(
                      color: Color.fromARGB(216, 17, 25, 43),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "${controller.nftModel.nft.first.avatar}",
                                fit: BoxFit.cover,
                                height: 260,
                                width: 240,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            indent: 0,
                            endIndent: 0,
                            height: 2,
                            thickness: 2,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 13, right: 13, top: 15, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: const Text(
                                    "Name Of NFT:",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 6, 122, 218),
                                        fontSize: 15),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                      controller.nftModel.nft.first.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 5, bottom: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Price Of NFT(SGD):",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 122, 218),
                                      fontSize: 15),
                                ),
                                Text("${controller.nftModel.nft.first.price}",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ),
                          ),
                          const Divider(
                            indent: 15,
                            endIndent: 15,
                            height: 1,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: Colors.green,
                                        ),
                                        onPressed: () {},
                                        child: const Text("PAY BY CRYPTO",
                                            style: TextStyle(fontSize: 12)))),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 6, 122, 218),
                                          foregroundColor: Colors.white,
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "PAY BY PAYNOW",
                                          style: TextStyle(fontSize: 12),
                                        ))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
    });
  }
}
