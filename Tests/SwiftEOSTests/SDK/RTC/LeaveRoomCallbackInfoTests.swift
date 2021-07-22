import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTC_LeaveRoomCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_LeaveRoomCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_LeaveRoomCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_LeaveRoomCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName) }
    }
}
