import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_SetSessionIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_SetSessionIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_SetSessionIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertNil(cstruct.SessionId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_SetSessionIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertNil(swiftObject.SessionId) }
    }
}
