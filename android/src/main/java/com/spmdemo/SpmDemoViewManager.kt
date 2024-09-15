package com.spmdemo

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = SpmDemoViewManager.NAME)
class SpmDemoViewManager :
  SpmDemoViewManagerSpec<SpmDemoView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): SpmDemoView {
    return SpmDemoView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: SpmDemoView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "SpmDemoView"
  }
}
