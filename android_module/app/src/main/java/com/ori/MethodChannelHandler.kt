package com.ori

import android.content.Context
import android.os.Build
import com.scottyab.rootbeer.RootBeer

class MethodChannelHandler(context: Context) {
    private val context:Context
    private val APP_PACKAGE_DOT_COUNT = 3
    private val DUAL_APP_ID_999 = "999"
    private val DOT = '.'

    init {
        this.context = context
    }

     fun isRooted(): Boolean {
        val rootBeer = RootBeer(context)
        return rootBeer.isRooted
    }

    fun getInstallPackageName(): String? {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            context.packageManager.getInstallSourceInfo(context.packageName).installingPackageName
        } else {
            @Suppress("DEPRECATION")
            context.packageManager.getInstallerPackageName(context.packageName)
        }
    }

    fun isClonedApps(): Boolean {
        val path = context.filesDir.path
        if (path.contains(DUAL_APP_ID_999)) {
            return true
        }

        val count = getDotCount(path)
        if (count > APP_PACKAGE_DOT_COUNT) {
            return true
        }

        return false
    }

    private fun getDotCount(path: String): Int {
        var count = 0
        for (element in path) {
            if (count > APP_PACKAGE_DOT_COUNT) {
                break
            }
            if (element == DOT) {
                count++
            }
        }
        return count
    }

}