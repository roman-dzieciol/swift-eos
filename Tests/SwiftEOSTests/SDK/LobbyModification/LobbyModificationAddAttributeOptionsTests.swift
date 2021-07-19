import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_AddAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_AddAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_AddAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYMODIFICATION_ADDATTRIBUTE_API_LATEST)
            XCTAssertNil(cstruct.Attribute)
            XCTAssertEqual(cstruct.Visibility, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_AddAttributeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYMODIFICATION_ADDATTRIBUTE_API_LATEST)
            XCTAssertNil(swiftObject.Attribute)
            XCTAssertEqual(swiftObject.Visibility, .zero) }
    }
}
