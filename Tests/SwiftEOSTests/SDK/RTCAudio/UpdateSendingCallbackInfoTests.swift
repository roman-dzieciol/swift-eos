import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_UpdateSendingCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateSendingCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateSendingCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.AudioStatus, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_UpdateSendingCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertEqual(swiftObject.AudioStatus, .zero) }
    }
}
