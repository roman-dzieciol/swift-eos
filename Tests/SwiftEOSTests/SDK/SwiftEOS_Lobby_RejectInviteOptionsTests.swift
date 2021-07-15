import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_RejectInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_RejectInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_RejectInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.InviteId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Lobby_RejectInviteOptions(sdkObject: cstruct) }
    }
}
