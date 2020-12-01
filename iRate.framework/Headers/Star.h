//
//  Star.h
//  iRating
//
//  Created by John Blaine on 9/20/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Star : UIView

@property (nonatomic, retain) UIButton *starBtn;

- (id)initWithFrame:(CGRect)frame bg:(UIColor*)b fg:(UIColor*)f;

@property CGFloat previousRate;

@property CGFloat rate;
@property UIColor *bg;
@property UIColor *fg;


- (void)paint:(CGFloat)f;
- (void)rollback;
- (void)select;

@end

NS_ASSUME_NONNULL_END
