// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef SpmDemoViewNativeComponent_h
#define SpmDemoViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface SpmDemoView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* SpmDemoViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
