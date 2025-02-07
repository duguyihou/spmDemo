#ifdef RCT_NEW_ARCH_ENABLED
#import "SpmDemoView.h"

#import <react/renderer/components/RNSpmDemoViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNSpmDemoViewSpec/EventEmitters.h>
#import <react/renderer/components/RNSpmDemoViewSpec/Props.h>
#import <react/renderer/components/RNSpmDemoViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface SpmDemoView () <RCTSpmDemoViewViewProtocol>

@end

@implementation SpmDemoView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<SpmDemoViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const SpmDemoViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<SpmDemoViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<SpmDemoViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> SpmDemoViewCls(void)
{
    return SpmDemoView.class;
}

@end
#endif
