import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_GetInviteCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_GetInviteCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_GetInviteCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_GetInviteCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
