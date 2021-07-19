import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_QueryInvitesOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_QueryInvitesOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_QueryInvitesOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_QUERYINVITES_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_QueryInvitesOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_QUERYINVITES_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
