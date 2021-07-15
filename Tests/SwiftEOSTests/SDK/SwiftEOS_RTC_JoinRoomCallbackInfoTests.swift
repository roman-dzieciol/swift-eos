import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_JoinRoomCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_JoinRoomCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_JoinRoomCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try SwiftEOS_RTC_JoinRoomCallbackInfo(sdkObject: cstruct) }
    }
}
