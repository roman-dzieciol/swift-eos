import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LobbyOwnerUserId)
            XCTAssertEqual(cstruct.PermissionLevel, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.AvailableSlots, .zero)
            XCTAssertEqual(cstruct.MaxMembers, .zero)
            XCTAssertEqual(cstruct.bAllowInvites, .zero)
            XCTAssertNil(cstruct.BucketId)
            XCTAssertEqual(cstruct.bAllowHostMigration, .zero)
            XCTAssertEqual(cstruct.bRTCRoomEnabled, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_Info(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LobbyOwnerUserId)
            XCTAssertEqual(swiftObject.PermissionLevel, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.AvailableSlots, .zero)
            XCTAssertEqual(swiftObject.MaxMembers, .zero)
            XCTAssertEqual(swiftObject.bAllowInvites, false)
            XCTAssertNil(swiftObject.BucketId)
            XCTAssertEqual(swiftObject.bAllowHostMigration, false)
            XCTAssertEqual(swiftObject.bRTCRoomEnabled, false) }
    }
}
