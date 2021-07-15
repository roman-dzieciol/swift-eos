import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_BlockParticipantCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_BlockParticipantCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_BlockParticipantCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.bBlocked, .zero)
            let swiftObject = try SwiftEOS_RTC_BlockParticipantCallbackInfo(sdkObject: cstruct) }
    }
}
