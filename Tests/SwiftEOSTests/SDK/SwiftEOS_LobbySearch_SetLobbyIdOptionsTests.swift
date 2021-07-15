import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_SetLobbyIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_SetLobbyIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_SetLobbyIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try SwiftEOS_LobbySearch_SetLobbyIdOptions(sdkObject: cstruct) }
    }
}
