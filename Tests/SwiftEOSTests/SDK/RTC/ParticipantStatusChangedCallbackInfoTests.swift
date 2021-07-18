import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_ParticipantStatusChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_ParticipantStatusChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_ParticipantStatusChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ParticipantId)
            XCTAssertEqual(cstruct.ParticipantStatus, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.ParticipantMetadataCount, .zero)
            XCTAssertNil(cstruct.ParticipantMetadata)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.ParticipantId)
            XCTAssertEqual(swiftObject.ParticipantStatus, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.ParticipantMetadata) }
    }
}
