import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mod_IdentifierTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mod_Identifier() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mod_Identifier.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.NamespaceId)
            XCTAssertNil(cstruct.ItemId)
            XCTAssertNil(cstruct.ArtifactId)
            XCTAssertNil(cstruct.Title)
            XCTAssertNil(cstruct.Version)
            let swiftObject = try SwiftEOS_Mod_Identifier(sdkObject: cstruct) }
    }
}
