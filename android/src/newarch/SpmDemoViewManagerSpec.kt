package com.spmdemo

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.SpmDemoViewManagerDelegate
import com.facebook.react.viewmanagers.SpmDemoViewManagerInterface

abstract class SpmDemoViewManagerSpec<T : View> : SimpleViewManager<T>(), SpmDemoViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = SpmDemoViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
