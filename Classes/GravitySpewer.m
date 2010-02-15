#import "GravitySpewer.h"

@implementation GravitySpewer

@synthesize address;
@synthesize port;
@synthesize spewing;

GravitySpewer *_gravitySpewerInstance;

+ (GravitySpewer*)instance {
    if (_gravitySpewerInstance == nil)
        _gravitySpewerInstance = [[GravitySpewer alloc] init];

    return _gravitySpewerInstance;
}

- (void)start {
}

- (void)stop {
}

@end
