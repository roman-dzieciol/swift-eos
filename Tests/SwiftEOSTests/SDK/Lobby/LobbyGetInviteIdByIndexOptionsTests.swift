import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_GetInviteIdByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_GetInviteIdByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_GetInviteIdByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_GetInviteIdByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
