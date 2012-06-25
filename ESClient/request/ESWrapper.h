//
//  ESWrapper.h
//  ElasticSearchClient
//
//  Created by Pulkit Singhal on 4/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESQueryString.h"
#import "ESRangeQuery.h"

@interface ESWrapper : NSObject

@property (nonatomic, strong) ESQueryString* query_string;
@property (nonatomic, strong) ESRangeQuery*  range;

+ (RKObjectMapping*) getObjectMapping;

@end
