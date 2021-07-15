import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_CreateLobbySearchOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_CreateLobbySearchOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_CreateLobbySearchOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MaxResults, .zero)
            let swiftObject = try SwiftEOS_Lobby_CreateLobbySearchOptions(sdkObject: cstruct) }
    }
}
