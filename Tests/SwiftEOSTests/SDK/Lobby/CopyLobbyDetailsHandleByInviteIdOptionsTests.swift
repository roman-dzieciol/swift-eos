import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST)
            XCTAssertNil(swiftObject.InviteId) }
    }
}
