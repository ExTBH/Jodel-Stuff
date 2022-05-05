#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface VoteViewController

@property(nonatomic, strong) UIAlertController *confirmAlert;
@property(nonatomic, strong) UIAlertAction *acceptAction;
@property(nonatomic, strong) UIAlertAction *declineAction;

-(id)voteLabel;
-(void)setVotelabel:(id)arg0;
-(id)voteDownButton;
-(void)setVoteDownButton:(id)arg0;
-(id)voteUpButton;
-(void)setVoteUpButton:(id)arg0;
-(id)refreshVoteState;
-(void)downvoteTap:(id)arg0;
-(void)upvoteTap:(id)arg0;

@end