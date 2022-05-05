#line 1 "Tweak.x"















#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface JDLMainFeedViewController : UIViewController
-(void)confirmUpvote;
@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class JDLMainFeedViewController; @class VoteViewController; 
static void _logos_method$_ungrouped$JDLMainFeedViewController$confirmUpvote(_LOGOS_SELF_TYPE_NORMAL JDLMainFeedViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$VoteViewController$upvoteTap$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$VoteViewController$upvoteTap$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); 

#line 26 "Tweak.x"


static void _logos_method$_ungrouped$JDLMainFeedViewController$confirmUpvote(_LOGOS_SELF_TYPE_NORMAL JDLMainFeedViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Confirm UpVote" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
    UIAlertAction * secondAction = [UIAlertAction actionWithTitle:@"Abort" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];

    [alert addAction:defaultAction];
    [alert addAction:secondAction];
    [self presentViewController:alert animated:YES completion:nil];
}




static void _logos_method$_ungrouped$VoteViewController$upvoteTap$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg0){
    [JDLMainFeedViewController confirmUpvote];
}


static __attribute__((constructor)) void _logosLocalCtor_9e60c2ca(int __unused argc, char __unused **argv, char __unused **envp) {
    {Class _logos_class$_ungrouped$JDLMainFeedViewController = objc_getClass("JDLMainFeedViewController"); { char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$JDLMainFeedViewController, @selector(confirmUpvote), (IMP)&_logos_method$_ungrouped$JDLMainFeedViewController$confirmUpvote, _typeEncoding); }Class _logos_class$_ungrouped$VoteViewController = objc_getClass("Jodel.JDLFeedCellVoteView"); { MSHookMessageEx(_logos_class$_ungrouped$VoteViewController, @selector(upvoteTap:), (IMP)&_logos_method$_ungrouped$VoteViewController$upvoteTap$, (IMP*)&_logos_orig$_ungrouped$VoteViewController$upvoteTap$);}}
}


