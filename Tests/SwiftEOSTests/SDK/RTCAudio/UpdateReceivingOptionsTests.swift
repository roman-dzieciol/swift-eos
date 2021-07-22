import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAudio_UpdateReceivingOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateReceivingOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateReceivingOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bAudioEnabled, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_UpdateReceivingOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.ParticipantId)
            XCTAssertEqual(swiftObject.bAudioEnabled, false) }
    }
}
