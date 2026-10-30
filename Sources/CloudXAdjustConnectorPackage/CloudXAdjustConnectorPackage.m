#import <CloudXAdjustConnector/CloudXAdjustConnector.h>

@interface CloudXAdjustConnectorPackageLoader : NSObject
@end

@implementation CloudXAdjustConnectorPackageLoader

+ (void)load {
    CloudXAdjustConnectorRegister();
}

@end
