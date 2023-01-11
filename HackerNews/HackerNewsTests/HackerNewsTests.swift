//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by BKS-GGS on 11/01/23.
//

import XCTest
@testable import HackerNews

class HackerNewsTests: XCTestCase {
    
    var objVM : ViewModel?
    override func setUpWithError() throws {
        objVM = ViewModel()
    }

    override func tearDownWithError() throws {
        objVM = nil
    }
    
    func testParseData(){
        objVM?.parseData(data: Data())
        XCTAssertEqual(objVM?.hitsArray.count, 0)
    }
    
    func testGetTotalHits(){
        
        let h1 = Hits(title: "abc", points: 8)
        let h2 = Hits(title: "def", points: 9)
        let h3 = Hits(title: "ghi", points: 10)
        objVM?.hitsArray.append(h1)
        objVM?.hitsArray.append(h2)
        objVM?.hitsArray.append(h3)
        XCTAssertEqual(objVM?.hitsArray.count, 3)
    }
    
    func testGetTitleFor(){
        let h1 = Hits(points: 8)
        let h2 = Hits(title: "def", points: 9)
        objVM?.hitsArray.append(h1)
        objVM?.hitsArray.append(h2)
        XCTAssertEqual(objVM?.getTitleFor(row: 1), "def")
        XCTAssertEqual(objVM?.getTitleFor(row: 0), "")
    }
    
    func testGetPointsFor(){
        let h1 = Hits(title: "abc", points: 8)
        let h2 = Hits(title: "def")
        objVM?.hitsArray.append(h1)
        objVM?.hitsArray.append(h2)
        XCTAssertEqual(objVM?.getPointsFor(row: 0), 8)
        XCTAssertEqual(objVM?.getPointsFor(row: 1), 0)
    }
}
