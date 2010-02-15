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
    NSLog(@"Starting to spew");
    spewing = YES;

    struct hostent *hp;

    hp = gethostbyname(address.UTF8String);

    if (hp == NULL) {
        //TODO handle error
    }

    memset(&sockAddr, 0, sizeof(sockAddr));
    memcpy((char*)&sockAddr.sin_addr, hp->h_addr, hp->h_length);
    sockAddr.sin_family = hp->h_addrtype;
    sockAddr.sin_port = htons((u_short)port);

    sock = socket(AF_INET, SOCK_DGRAM, 0);

    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:0.1];
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
}

- (void)stop {
    NSLog(@"Stopping the spewage");
    [[UIAccelerometer sharedAccelerometer] setDelegate:nil];
    spewing = NO;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
    NSLog(@"Sending accelerometer data");
    AccelerometerData data;
    data.x         = acceleration.x;
    data.y         = acceleration.y;
    data.z         = acceleration.z;
    data.timestamp = acceleration.timestamp;

    int result = sendto(sock, &data, sizeof(data), 0, &sockAddr, sizeof(sockAddr));

    if (result == -1) {
        NSLog(@"Error sending data: %s", strerror(errno));
    }
}

@end
