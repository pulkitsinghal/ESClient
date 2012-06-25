//
//  ESRangeQuery.h
//  ElasticSearchClient
//
//  Created by Pulkit Singhal on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <RestKit/RestKit.h>

@interface ESRangeQuery : NSObject

@property (nonatomic, strong) NSNumber* from;
@property (nonatomic, strong) NSNumber* to;
@property (nonatomic, strong) NSNumber* include_lower;
@property (nonatomic, strong) NSNumber* include_upper;
@property (nonatomic, strong) NSNumber* boost;

+ (RKObjectMapping*) getObjectMapping;

@end
