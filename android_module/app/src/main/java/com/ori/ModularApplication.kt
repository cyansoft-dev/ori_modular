package com.ori

import android.app.Application

class ModularApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        FlutterInitialize.setupFlutterEngine(this)
        FlutterInitialize.setupMethodChannel(this)
    }

}
