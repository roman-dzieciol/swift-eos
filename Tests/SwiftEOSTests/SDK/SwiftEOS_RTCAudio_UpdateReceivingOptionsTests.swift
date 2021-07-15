import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_UpdateReceivingOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateReceivingOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateReceivingOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bAudioEnabled, .zero)
            let swiftObject = try SwiftEOS_RTCAudio_UpdateReceivingOptions(sdkObject: cstruct) }
    }
}
