import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_AddNotifyParticipantStatusChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_AddNotifyParticipantStatusChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_AddNotifyParticipantStatusChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTC_ADDNOTIFYPARTICIPANTSTATUSCHANGED_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTC_AddNotifyParticipantStatusChangedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTC_ADDNOTIFYPARTICIPANTSTATUSCHANGED_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName) }
    }
}
