import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_AddNotifyDisconnectedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_AddNotifyDisconnectedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_AddNotifyDisconnectedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTC_ADDNOTIFYDISCONNECTED_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_AddNotifyDisconnectedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTC_ADDNOTIFYDISCONNECTED_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName) }
    }
}
