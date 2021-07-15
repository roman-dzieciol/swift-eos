import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_UpdateReceivingCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateReceivingCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateReceivingCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bAudioEnabled, .zero)
            let swiftObject = try SwiftEOS_RTCAudio_UpdateReceivingCallbackInfo(sdkObject: cstruct) }
    }
}
