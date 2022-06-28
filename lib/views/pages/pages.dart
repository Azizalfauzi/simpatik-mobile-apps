import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simpatik_mobile_apps/cubit/routes/routes_cubit.dart';
import 'package:simpatik_mobile_apps/model/models.dart';
import 'package:simpatik_mobile_apps/views/theme/theme.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simpatik_mobile_apps/views/widget/widget.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:intl/intl.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../cubit/api/auth/auth_services_cubit.dart';
import '../../cubit/counter/counter_cubit.dart';


part 'login_page.dart';
part 'onboarding_page.dart';
part 'splash_screen_page.dart';
part 'register_page.dart';
part 'wrapper.dart';
part 'main_page.dart';
part 'home_page.dart';
part 'profile_page.dart';
part 'transaction_page.dart';
part 'detail_page.dart';
part 'myticket_page.dart';
part 'order_ticket_page.dart';
part 'transaction_history_page.dart';
part 'transaction_ongoing_page.dart';
part 'myticket_status_page.dart';