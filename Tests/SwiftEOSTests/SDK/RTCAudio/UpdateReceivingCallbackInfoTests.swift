import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_UpdateReceivingCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateReceivingCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateReceivingCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bAudioEnabled, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.ParticipantId)
            XCTAssertEqual(swiftObject.bAudioEnabled, false) }
    }
}
