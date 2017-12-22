//
//  appTests.swift
//  appTests
//
//  Created by Remi Robert on 22/12/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import XCTest
@testable import app

class appTests: XCTestCase {
    func testExample() {
        let appDelegate = AppDelegate()
        XCTAssertNotNil(appDelegate.window)
    }
}
