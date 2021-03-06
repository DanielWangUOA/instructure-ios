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

import XCTest

class CKIFavoriteNetworkingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFetchFavoriteCourses() {
        let client = MockCKIClient()
        
        client.fetchFavoriteCourses()
        XCTAssertEqual(client.capturedPath!, "/api/v1/users/self/favorites/courses", "CKIFavorite returned API path for testFetchFavoriteCourses was incorrect")
    }
    
    func testAddCourseToFavoritesWithSuccessFailure() {
        let client = MockCKIClient()
        let courseDictionary = Helpers.loadJSONFixture("course") as NSDictionary
        let course = CKICourse(fromJSONDictionary: courseDictionary)
        
        client.addCourseToFavorites(course)
        XCTAssertEqual(client.capturedPath!, "/api/v1/users/self/favorites/courses/1", "CKIFavorite returned API path for testAddCourseToFavoritesWithSuccessFailure was incorrect")
    }

    func testremoveCourseFromFavoritesWithSuccessFailure() {
        let client = MockCKIClient()
        let courseDictionary = Helpers.loadJSONFixture("course") as NSDictionary
        let course = CKICourse(fromJSONDictionary: courseDictionary)
        
        client.removeCourseFromFavorites(course)
        XCTAssertEqual(client.capturedPath!, "/api/v1/users/self/favorites/courses/1", "CKIFavorite returned API path for testAddCourseToFavoritesWithSuccessFailure was incorrect")
    }
}
