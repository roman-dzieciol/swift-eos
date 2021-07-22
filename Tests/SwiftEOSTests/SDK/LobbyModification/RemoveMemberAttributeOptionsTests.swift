import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbyModification_RemoveMemberAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_RemoveMemberAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_RemoveMemberAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_RemoveMemberAttributeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Key) }
    }
}
