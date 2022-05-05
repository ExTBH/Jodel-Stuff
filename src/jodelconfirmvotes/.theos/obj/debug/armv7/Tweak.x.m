#line 1 "Tweak.x"

#import "Tweak.h"













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

@class VoteViewController; 


#line 15 "Tweak.x"

__attribute__((used)) static UIAlertController * _logos_property$_ungrouped$VoteViewController$confirmAlert(VoteViewController * __unused self, SEL __unused _cmd) { return (UIAlertController *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$VoteViewController$confirmAlert); }; __attribute__((used)) static void _logos_property$_ungrouped$VoteViewController$setConfirmAlert(VoteViewController * __unused self, SEL __unused _cmd, UIAlertController * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$VoteViewController$confirmAlert, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UIAlertAction * _logos_property$_ungrouped$VoteViewController$acceptAction(VoteViewController * __unused self, SEL __unused _cmd) { return (UIAlertAction *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$VoteViewController$acceptAction); }; __attribute__((used)) static void _logos_property$_ungrouped$VoteViewController$setAcceptAction(VoteViewController * __unused self, SEL __unused _cmd, UIAlertAction * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$VoteViewController$acceptAction, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UIAlertAction * _logos_property$_ungrouped$VoteViewController$declineAction(VoteViewController * __unused self, SEL __unused _cmd) { return (UIAlertAction *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$VoteViewController$declineAction); }; __attribute__((used)) static void _logos_property$_ungrouped$VoteViewController$setDeclineAction(VoteViewController * __unused self, SEL __unused _cmd, UIAlertAction * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$VoteViewController$declineAction, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

_confirmAlert = [UIAlertController alertControllerWithTitle:@"Confirm?" message:nil preferredStyle:UIAlertControllerStyleAlert];
_acceptAction = [UIAlertAction actionWithTitle:@"Confirm?" style:UIAlertActionStyleDefault handler:nil];
_declineAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:nil];
[_confirmAlert addAction:_acceptAction];
[_confirmAlert addAction:_declineAction];
[self presentViewController:_confirmAlert animated:YES completion:nil];




static __attribute__((constructor)) void _logosLocalCtor_59884cf5(int __unused argc, char __unused **argv, char __unused **envp) {
    {Class _logos_class$_ungrouped$VoteViewController = objc_getClass("Jodel.JDLFeedCellVoteView"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UIAlertController\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$VoteViewController, "confirmAlert", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIAlertController *)); class_addMethod(_logos_class$_ungrouped$VoteViewController, @selector(confirmAlert), (IMP)&_logos_property$_ungrouped$VoteViewController$confirmAlert, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIAlertController *)); class_addMethod(_logos_class$_ungrouped$VoteViewController, @selector(setConfirmAlert:), (IMP)&_logos_property$_ungrouped$VoteViewController$setConfirmAlert, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UIAlertAction\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$VoteViewController, "acceptAction", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIAlertAction *)); class_addMethod(_logos_class$_ungrouped$VoteViewController, @selector(acceptAction), (IMP)&_logos_property$_ungrouped$VoteViewController$acceptAction, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIAlertAction *)); class_addMethod(_logos_class$_ungrouped$VoteViewController, @selector(setAcceptAction:), (IMP)&_logos_property$_ungrouped$VoteViewController$setAcceptAction, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"UIAlertAction\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$VoteViewController, "declineAction", _attributes, attrc); char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIAlertAction *)); class_addMethod(_logos_class$_ungrouped$VoteViewController, @selector(declineAction), (IMP)&_logos_property$_ungrouped$VoteViewController$declineAction, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIAlertAction *)); class_addMethod(_logos_class$_ungrouped$VoteViewController, @selector(setDeclineAction:), (IMP)&_logos_property$_ungrouped$VoteViewController$setDeclineAction, _typeEncoding); } }
}


