//
//  SDEKUITests.swift
//  SDEKUITests
//
//  Created by Samir Akhmadi on 06.08.2021.
//

import XCTest

class SDEKUITests: XCTestCase {

    override func setUpWithError() throws {
        

        
        continueAfterFailure = false

        
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
       
        let app = XCUIApplication()
        app.launch()

        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
