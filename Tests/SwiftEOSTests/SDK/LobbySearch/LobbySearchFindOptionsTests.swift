import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_FindOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_FindOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_FindOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYSEARCH_FIND_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_FindOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYSEARCH_FIND_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
