import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
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
                      child: TextFormField(
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
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))
                                        .r,
                                borderSide: BorderSide(
                                    width: 1.w,
                                    color: black000000.withOpacity(0.5)),
                              ),
                              fillColor: black373333.withOpacity(0.25),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
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
                              suffixIcon: InkWell(
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: black373333,
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(6).r)),
                                  child: Center(
                                    child: Image.asset(
                                      'images/search_container.png',
                                      height: 22.h,
                                      width: 22.w,
                                    ),
                                  ),
                                ),
                              ))),
                    ),
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
                const ChatFriends(
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
