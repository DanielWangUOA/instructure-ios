//
// Copyright (C) 2016-present Instructure, Inc.
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
    
    

import Foundation

extension NSError {
    public class func simpleError(localizedDescription: String, code: Int) -> NSError {
        let userInfo = [NSLocalizedDescriptionKey: localizedDescription]
        let error = NSError(domain: "com.instructure.canvas", code: code, userInfo: userInfo)
        return error
    }
}