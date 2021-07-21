import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_AddMemberAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_AddMemberAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_AddMemberAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Attribute)
            XCTAssertEqual(cstruct.Visibility, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_AddMemberAttributeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Attribute)
            XCTAssertEqual(swiftObject.Visibility, .zero) }
    }
}
