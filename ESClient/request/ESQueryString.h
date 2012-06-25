//
//  ESQueryString.h
//  ShoppinPal
//
//  Created by Pulkit Singhal on 4/7/12.
//  Copyright (c) 2012 Fermyon Inc. All rights reserved.
//

#import <RestKit/RestKit.h>

@interface ESQueryString : NSObject

@property (nonatomic, strong) NSArray*  fieldsToQueryOn;
@property (nonatomic, strong) NSString* query;
@property (nonatomic, strong) NSNumber* use_dis_max;

+ (RKObjectMapping*) getObjectMapping;

@end