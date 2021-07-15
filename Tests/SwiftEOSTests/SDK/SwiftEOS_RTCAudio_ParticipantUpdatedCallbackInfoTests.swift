import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bSpeaking, .zero)
            XCTAssertEqual(cstruct.AudioStatus, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo(sdkObject: cstruct) }
    }
}
