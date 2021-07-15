import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_LeaveRoomOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_LeaveRoomOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_LeaveRoomOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try SwiftEOS_RTC_LeaveRoomOptions(sdkObject: cstruct) }
    }
}
