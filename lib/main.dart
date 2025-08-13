import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hub_dash_board/bloco_bserver.dart';
import 'package:flutter_hub_dash_board/core/helper/end_points.dart';
import 'package:flutter_hub_dash_board/core/utils/services/get_it_services.dart';
import 'package:flutter_hub_dash_board/firebase_options.dart';
import 'package:flutter_hub_dash_board/fruits_hub_dash_board.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await Supabase.initialize(
    url: EndPoints.supabaseUrl,
    anonKey: EndPoints.supabaseKey,
  );
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setup();
  runApp(const FruitsHubDashBoard());
}
