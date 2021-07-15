import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_LeaveRoomCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_LeaveRoomCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_LeaveRoomCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try SwiftEOS_RTC_LeaveRoomCallbackInfo(sdkObject: cstruct) }
    }
}
