import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';
import 'package:peervendors/views/components/chat_friends.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 45, right: 45).r,
            color: whiteF4F5F7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  'All Users',
                  style: TextStyle(
                      color: black000000,
                      fontSize: 20.sp,
                      fontFamily: roboto,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      height: 23.44.toFigmaHeight(20.sp)),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    SizedBox(
                        height: 40.h,
                        width: 275.w,
                        child: Stack(children: [
                          TextFormField(
                              cursorColor: black000000,
                              style: TextStyle(
                                color: black000000,
                                fontSize: 14.sp,
                                fontFamily: helvetica,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                contentPadding: EdgeInsets.only(left: 15.r),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent)),
                                fillColor: black373333.withOpacity(0.25),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    )),
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                    color: whiteFFFFFF
                                        .withOpacity(0.6000000238418579),
                                    fontSize: 14.sp,
                                    fontFamily: helvetica,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                    height: .4),
                              )),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 40.h,
                              width: 40.h,
                              decoration: BoxDecoration(
                                  color: black565E70,
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Center(
                                  child: Image.asset(
                                'images/search_container.png',
                                height: 20.h,
                                width: 20.w,
                              )),
                            ),
                          )
                        ])),
                    SizedBox(
                      width: 15.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: blue03A9F1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        child: Center(
                          child: Icon(
                            add,
                            color: whiteFFFFFF,
                            size: 23.w,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 38.h,
                ),
                ChatFriends(
                    onTap: () {
                      Get.toNamed(chatDetailsScreen);
                    },
                    unseenCount: 5,
                    userName: 'Bożenka Malina',
                    lastMessage: 'Uploaded file.',
                    profileImage: 'images/bozenka_profile_pic.png'),
                const ChatFriends(
                    unseenCount: 0,
                    userName: 'Odeusz Piotrowski',
                    lastMessage: 'Will do, super, thank you',
                    profileImage: 'images/odeusz_profile_pic.png'),
                const ChatFriends(
                  unseenCount: 3,
                  userName: 'Krysia Eurydyka',
                  lastMessage: 'How is koronavirus?',
                  profileImage: 'images/krysia_profile_pic.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
