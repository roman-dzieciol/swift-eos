import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_DisconnectedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_DisconnectedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_DisconnectedCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_DisconnectedCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName) }
    }
}
