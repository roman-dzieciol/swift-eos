import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_SetParticipantHardMuteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_SetParticipantHardMuteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_SetParticipantHardMuteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.bMute, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_SetParticipantHardMuteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.bMute, false) }
    }
}
