@interface GravitySpewer : NSObject
{
    NSString *address;
    int port;
    BOOL spewing;
}

@property (nonatomic, retain) NSString *address;
@property (nonatomic, assign) int port;
@property (nonatomic, readonly) BOOL spewing;

+ (GravitySpewer*)instance;
- (void)start;
- (void)stop;

@end
