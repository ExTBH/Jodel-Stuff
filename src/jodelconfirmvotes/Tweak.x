
//#import "Tweak.h"


//%hook VoteViewController

//- (void)upvoteTap:(id)arg0 {
//	NSLog(@"upvoteTap: Method Called!!");

//	%orig;
//}

//%end


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//JDLReactiveViewController

@interface JDLMainFeedViewController : UIViewController
-(void)confirmUpvote;
@end

// create new method to show the alert as it inherits from ViewController
%hook JDLMainFeedViewController
%new
-(void)confirmUpvote {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Confirm UpVote" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    UIAlertAction * secondAction = [UIAlertAction actionWithTitle:@"Abort" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];

    [alert addAction:defaultAction];
    [alert addAction:secondAction];
    [self presentViewController:alert animated:YES completion:nil];
}
%end

//call the new method to show the alert
%hook VoteViewController
-(void)upvoteTap:(id)arg0{
    [JDLMainFeedViewController confirmUpvote];
}
%end

%ctor {
    %init(VoteViewController = objc_getClass("Jodel.JDLFeedCellVoteView"));
}


