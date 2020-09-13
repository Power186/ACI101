//
//  MinutesTestz.swift
//  MinutesTestz
//
//  Created by Scott on 9/13/20.
//  Copyright © 2020 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTestz: XCTestCase {
    
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Title", "Content")
    }
    
    override func tearDown() {
        super.tearDown()
        entryUnderTest = nil
    }
    
    func testSerialization() {
        let serializeData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializeData!)
        
        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
    
}


