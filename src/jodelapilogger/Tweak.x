
#import "Tweak.h"


// Hook HMAC Builder
%hook JDLAPIRequestHMACHashBuilder
// Log secret to Sys log
-(id)secretKey {
	NSLog(@"secretkey: %@", %orig);

	return %orig;

}
// Log client type to Sys log
-(id)clientType {
	NSLog(@"clientType: %@", %orig);

	return %orig;

}

%end