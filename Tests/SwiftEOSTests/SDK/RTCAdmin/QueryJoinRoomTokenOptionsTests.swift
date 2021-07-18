import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_QueryJoinRoomTokenOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_QueryJoinRoomTokenOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_QueryJoinRoomTokenOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.TargetUserIds)
            XCTAssertEqual(cstruct.TargetUserIdsCount, .zero)
            XCTAssertNil(cstruct.TargetUserIpAddresses)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_QueryJoinRoomTokenOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.TargetUserIds)
            XCTAssertNil(swiftObject.TargetUserIpAddresses) }
    }
}
