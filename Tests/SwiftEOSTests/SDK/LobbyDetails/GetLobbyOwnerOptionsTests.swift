import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_GetLobbyOwnerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_GetLobbyOwnerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_GetLobbyOwnerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYDETAILS_GETLOBBYOWNER_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_GetLobbyOwnerOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYDETAILS_GETLOBBYOWNER_API_LATEST) }
    }
}
