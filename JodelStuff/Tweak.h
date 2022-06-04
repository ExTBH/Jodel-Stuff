#import <Foundation/Foundation.h>



@interface DCDevice : NSObject

-(void)generateTokenWithCompletionHandler:(void (^)(NSData *token, NSError *error))completion;

@end