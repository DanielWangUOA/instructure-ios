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
import Marshal

private class Bundle {}
let currentBundle = NSBundle(forClass: Bundle.self)

let folderJSON: JSONObject = [
    "id": "1",
    "name": "Steve",
    "hidden_for_user": false,
    "files_url": "https://mobiledev.instructure.com/api/v1/folders/10017868/folders",
    "folders_url": "https://mobiledev.instructure.com/api/v1/folders/10017868/folders",
    "files_count": 10,
    "folders_count": 10
]