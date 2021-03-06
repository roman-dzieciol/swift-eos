import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTC_JoinRoomOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_JoinRoomOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_JoinRoomOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ClientBaseUrl)
            XCTAssertNil(cstruct.ParticipantToken)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.Flags, .zero)
            XCTAssertEqual(cstruct.bManualAudioInputEnabled, .zero)
            XCTAssertEqual(cstruct.bManualAudioOutputEnabled, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_JoinRoomOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.ClientBaseUrl)
            XCTAssertNil(swiftObject.ParticipantToken)
            XCTAssertNil(swiftObject.ParticipantId)
            XCTAssertEqual(swiftObject.Flags, .zero)
            XCTAssertEqual(swiftObject.bManualAudioInputEnabled, false)
            XCTAssertEqual(swiftObject.bManualAudioOutputEnabled, false) }
    }
}
