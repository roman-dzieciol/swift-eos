import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_PromoteMemberOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_PromoteMemberOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_PromoteMemberOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_PROMOTEMEMBER_API_LATEST)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_PromoteMemberOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_PROMOTEMEMBER_API_LATEST)
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
