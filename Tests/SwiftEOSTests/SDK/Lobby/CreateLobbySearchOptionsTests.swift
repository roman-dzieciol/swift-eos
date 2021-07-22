import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_CreateLobbySearchOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_CreateLobbySearchOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_CreateLobbySearchOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MaxResults, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_CreateLobbySearchOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.MaxResults, .zero) }
    }
}
