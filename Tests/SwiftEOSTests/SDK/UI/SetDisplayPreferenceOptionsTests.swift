import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_SetDisplayPreferenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_SetDisplayPreferenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_SetDisplayPreferenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.NotificationLocation, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_SetDisplayPreferenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.NotificationLocation, .zero) }
    }
}
