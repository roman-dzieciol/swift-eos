import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_RemoveAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_RemoveAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_RemoveAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYMODIFICATION_REMOVEATTRIBUTE_API_LATEST)
            XCTAssertNil(cstruct.Key)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_RemoveAttributeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYMODIFICATION_REMOVEATTRIBUTE_API_LATEST)
            XCTAssertNil(swiftObject.Key) }
    }
}
