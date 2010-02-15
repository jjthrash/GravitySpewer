#import <sys/socket.h>
#import <netdb.h>

typedef struct {
    double x;
    double y;
    double z;
    double timestamp;
} AccelerometerData;

@interface GravitySpewer : NSObject <UIAccelerometerDelegate>
{
    NSString *address;
    int port;
    BOOL spewing;

    int sock;
    struct sockaddr_in sockAddr;
}

@property (nonatomic, retain) NSString *address;
@property (nonatomic, assign) int port;
@property (nonatomic, readonly) BOOL spewing;

+ (GravitySpewer*)instance;
- (void)start;
- (void)stop;

@end
