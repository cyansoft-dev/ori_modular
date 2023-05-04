package com.ori

import android.content.Context
import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterActivityLaunchConfigs
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel

class FlutterInitialize {

    companion object {

        private const val FLUTTER_ENGINE_ID = "flutter_engine_id"

        private const val METHOD_CHANNEL = "method_channel"

        lateinit var flutterEngine: FlutterEngine

        fun setupFlutterEngine(context: Context) {
            flutterEngine = FlutterEngine(context)
            flutterEngine.dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )
            FlutterEngineCache.getInstance().put(FLUTTER_ENGINE_ID, flutterEngine);
        }

        fun setupMethodChannel(context: Context) {
            MethodChannel(flutterEngine.dartExecutor.binaryMessenger, METHOD_CHANNEL).setMethodCallHandler { call, result ->
                val method = MethodChannelHandler(context)
                when(call.method){
                    "isRooted" -> {
                        result.success(method.isRooted())
                    }
                    "isCloned" -> {
                        result.success(method.isClonedApps())
                    }
                    "installSourceInfo" -> {
                        result.success(method.getInstallPackageName())
                    }
                    else -> {
                        result.notImplemented()
                    }
                }
            }
        }

        fun buildCacheEngine(context: Context) : Intent {
            return FlutterActivity.withCachedEngine(FLUTTER_ENGINE_ID)
                .backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode.transparent)
                .build(context)
        }

        fun buildNewEngine(context: Context) : Intent {
            return FlutterActivity.withNewEngine()
                .backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode.transparent)
                .build(context)
        }

    }
}