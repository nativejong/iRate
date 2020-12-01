//
//  ZRate.h
//  iRating
//
//  Created by John Blaine on 9/20/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Star.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZRate : UIView

@property (nonatomic, retain) NSMutableArray *star;

@property CGPoint start;
@property CGPoint end;
@end

NS_ASSUME_NONNULL_END
