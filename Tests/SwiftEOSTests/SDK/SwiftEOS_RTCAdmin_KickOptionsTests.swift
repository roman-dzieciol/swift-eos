import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_KickOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_KickOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_KickOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_RTCAdmin_KickOptions(sdkObject: cstruct) }
    }
}
