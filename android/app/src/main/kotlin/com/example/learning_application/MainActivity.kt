package com.example.learning_application

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import android.view.WindowManager
import android.view.ViewTreeObserver

import android.os.Bundle
class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        //make transparent status bar
        getWindow().setStatusBarColor(0x00000000)
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}

