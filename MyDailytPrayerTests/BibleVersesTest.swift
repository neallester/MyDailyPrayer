//
//  BibleVersesTest.swift
//  MyDailytPrayer
//
//  Created by Neal Lester on 9/15/15.
//  Copyright (c) 2015 Neal Lester. All rights reserved.
//

import Foundation
import XCTest
import MyDailytPrayer

public class BibleVersesTest : XCTestCase {

    func testVerses() {
    
        let verses = BibleVerses();
        XCTAssertEqual(7, verses.verses.count, "versesCount")
        for index in 0...6 {
            XCTAssertNotNil(verses.verses[index], "itemNotNil")
        }
        XCTAssertEqual("Verse 1", verses.verses[0], "verse1")
        XCTAssertEqual("Verse 2", verses.verses[1], "verse2")
        XCTAssertEqual("Verse 3", verses.verses[2], "verse3")
        XCTAssertEqual("Verse 4", verses.verses[3], "verse4")
        XCTAssertEqual("Verse 5", verses.verses[4], "verse5")
        XCTAssertEqual("Verse 6", verses.verses[5], "verse6")
        XCTAssertEqual("Verse 7", verses.verses[6], "verse7")
    }

}

