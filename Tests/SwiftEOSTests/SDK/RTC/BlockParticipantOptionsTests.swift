import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_BlockParticipantOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_BlockParticipantOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_BlockParticipantOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTC_BLOCKPARTICIPANT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bBlocked, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_BlockParticipantOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTC_BLOCKPARTICIPANT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.ParticipantId)
            XCTAssertEqual(swiftObject.bBlocked, false) }
    }
}
