import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_KickOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_KickOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_KickOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCADMIN_KICK_API_LATEST)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_KickOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCADMIN_KICK_API_LATEST)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
