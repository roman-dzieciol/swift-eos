import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_SetInvitesAllowedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_SetInvitesAllowedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_SetInvitesAllowedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.bInvitesAllowed, .zero)
            let swiftObject = try SwiftEOS_LobbyModification_SetInvitesAllowedOptions(sdkObject: cstruct) }
    }
}
