import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbyModification_SetMaxMembersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_SetMaxMembersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_SetMaxMembersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MaxMembers, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_SetMaxMembersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.MaxMembers, .zero) }
    }
}
