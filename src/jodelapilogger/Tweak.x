
#import "Tweak.h"
#import "JDLAPIRequestHMACHashBuilder.h"
#import "SWGCredentials.h"



// Hook HMAC Builder


%hook JDLAPIRequestHMACHashBuilder

-(id)clientType {


	NSLog(@"%@", [NSThread callStackSymbols]);

	// TODO: figure out how to call [clientId] from another class. > Find a class with reference to both classes
	
	// figur how to log stack trace when the method is called
	NSLog(@"Jodel API Info\nsecretKey: %@\nclientType: %@\naccessToken: %@",
	[self secretKey],
	%orig,
	[self accessToken]);

	return %orig;

}

%end


%hook SWGCredentials

-(id)clientId {
	NSLog(@"%@", [NSThread callStackSymbols]);
	NSLog(@"Jodel API Info\nappleDeviceToken: %@\nclientId: %@\ndeviceuid: %@\nadId: %@\nregistrationData: %@",
	[self appleDeviceToken],
	%orig,
	[self deviceUid],
	[self adId],
	[self registrationData]);
	return %orig;
}
%end

%hook DCDevice

// [generateTokenWithCompletionHandler] return an Address, use it to access DCDevice instance and call [generateAppleToken]
// Only Work on app first launch after getting to Age select view

%new
-(void)generateAppleToken{
	[self generateTokenWithCompletionHandler:^(NSData *token, NSError *error){
		NSString *dataString = [token base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithCarriageReturn];
		NSLog(@"deez %s: %@",__PRETTY_FUNCTION__, dataString);
	}];
}

- (void)generateTokenWithCompletionHandler:(void (^)(NSData *token, NSError *error))completion{
		NSLog(@"%s: %@",__PRETTY_FUNCTION__, completion);
	%orig;
}

%end

%hook JDLUUID
+(id)generateNewUuid{
	NSString *ret = %orig;
	NSLog(@"%s: OLD: %@",__PRETTY_FUNCTION__, ret);

	ret = [ret stringByReplacingOccurrencesOfString:@"a" withString:@"e"];
	ret = [ret stringByReplacingOccurrencesOfString:@"6" withString:@"9"];

	NSLog(@"%s: NEW: %@",__PRETTY_FUNCTION__, ret);
	return ret;
}


%end
