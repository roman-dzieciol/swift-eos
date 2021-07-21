import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_RejectInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_RejectInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_RejectInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.InviteId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_RejectInviteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.InviteId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
