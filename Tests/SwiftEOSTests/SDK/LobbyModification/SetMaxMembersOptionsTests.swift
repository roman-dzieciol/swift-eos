import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_SetMaxMembersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_SetMaxMembersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_SetMaxMembersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST)
            XCTAssertEqual(cstruct.MaxMembers, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_SetMaxMembersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST)
            XCTAssertEqual(swiftObject.MaxMembers, .zero) }
    }
}
