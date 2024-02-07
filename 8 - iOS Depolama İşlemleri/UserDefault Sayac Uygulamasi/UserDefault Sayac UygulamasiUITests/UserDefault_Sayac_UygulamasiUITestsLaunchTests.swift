//
//  UserDefault_Sayac_UygulamasiUITestsLaunchTests.swift
//  UserDefault Sayac UygulamasiUITests
//
//  Created by Şafak Selim Sofioğlu on 6.02.2024.
//

import XCTest

final class UserDefault_Sayac_UygulamasiUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
