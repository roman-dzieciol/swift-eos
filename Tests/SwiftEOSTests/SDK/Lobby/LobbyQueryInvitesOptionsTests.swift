import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_QueryInvitesOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_QueryInvitesOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_QueryInvitesOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_QueryInvitesOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
