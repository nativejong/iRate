//
//  iRate.h
//  iRate
//
//  Created by John Blaine on 12/1/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Star.h"

//! Project version number for iRate.
FOUNDATION_EXPORT double iRateVersionNumber;
FOUNDATION_EXPORT const unsigned char iRateVersionString[];


IB_DESIGNABLE
@interface iRate : UIView

- (id)initWithFrame:(CGRect)frame bg:(UIColor*)b fg:(UIColor*)f;

@property (nonatomic, retain) NSMutableArray *star;


@property NSInteger numOfStars;
@property CGPoint start;
@property CGPoint end;

- (void)watchAction:(CGFloat)n rating:(BOOL(^)(CGFloat val))rt;

@property (copy, nonatomic) BOOL (^ratingCB)(CGFloat val );
@end

