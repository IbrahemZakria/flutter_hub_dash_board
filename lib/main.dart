import 'package:flutter/material.dart';
import 'package:flutter_hub_dash_board/core/helper/end_points.dart';
import 'package:flutter_hub_dash_board/fruits_hub_dash_board.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: EndPoints.supabaseUrl,
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVnZWNwcXNlZmZwY3p2YndicndnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQ3NzA2MjAsImV4cCI6MjA3MDM0NjYyMH0.dhv1kNPOP7fv2az9gOjGR4RPo5nCcK-R6u7CUV0OZuU",
  );

  runApp(const FruitsHubDashBoard());
}
