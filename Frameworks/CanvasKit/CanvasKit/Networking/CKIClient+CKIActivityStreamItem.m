//
// Copyright (C) 2017-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

@import ReactiveObjC;

#import "CKIClient+CKIActivityStreamItem.h"
#import "CKIActivityStreamItem.h"
#import "CKICourse.h"

@implementation CKIClient (CKIActivityStreamItem)

- (RACSignal *)fetchActivityStreamForContext:(id<CKIContext>)context
{
    NSString *path = context.path;
    
    if ([path isEqualToString:@"/api/v1"] || path == (id)[NSNull null] || path.length == 0){
        path = @"/api/v1/users/self/activity_stream";
    }
    
    NSValueTransformer *transformer = [CKIActivityStreamItem activityStreamItemTransformer];
    return [self fetchResponseAtPath:path parameters:nil transformer:transformer context:nil];
}

- (RACSignal *)fetchActivityStream
{
    return [self fetchActivityStreamForContext:CKIRootContext];
}

@end
