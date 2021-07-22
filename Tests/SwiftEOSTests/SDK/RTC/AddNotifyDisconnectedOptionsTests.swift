import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTC_AddNotifyDisconnectedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_AddNotifyDisconnectedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_AddNotifyDisconnectedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_AddNotifyDisconnectedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName) }
    }
}
