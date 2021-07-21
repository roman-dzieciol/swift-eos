import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.UiEventId, .zero) }
    }
}
