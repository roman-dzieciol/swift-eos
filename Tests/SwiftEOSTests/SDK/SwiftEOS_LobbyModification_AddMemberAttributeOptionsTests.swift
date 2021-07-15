import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_AddMemberAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_AddMemberAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_AddMemberAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Attribute)
            XCTAssertEqual(cstruct.Visibility, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_LobbyModification_AddMemberAttributeOptions(sdkObject: cstruct) }
    }
}
