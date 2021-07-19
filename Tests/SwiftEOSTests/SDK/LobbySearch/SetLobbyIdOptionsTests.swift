import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_SetLobbyIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_SetLobbyIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_SetLobbyIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_SetLobbyIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
