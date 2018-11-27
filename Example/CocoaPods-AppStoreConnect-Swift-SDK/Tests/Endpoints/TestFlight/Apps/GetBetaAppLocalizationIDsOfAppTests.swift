//
//  GetBetaAppLocalizationIDsOfAppTests.swift
//  AppStoreConnect-Swift-SDK_Tests
//
//  Created by Pascal Edmond on 26/11/2018.
//

import XCTest
@testable import AppStoreConnect_Swift_SDK

final class GetBetaAppLocalizationIDsOfAppTests: XCTestCase {
    
    let provider = APIProvider(configuration: APIConfiguration(issuerID: "", privateKeyID: "", privateKey: ""))
    
    func testAbsoluteString() {
        let endpoint = APIEndpoint.betaAppLocalizationIDsOfApp(
            withId: "appId",
            limit: 3)
        let absoluteString = provider.request(for: endpoint).request?.url?.absoluteString
        let expected = "https://api.appstoreconnect.apple.com/v1/apps/appId/relationships/betaAppLocalizations?limit=3"
        XCTAssertEqual(absoluteString, expected)
    }
}
