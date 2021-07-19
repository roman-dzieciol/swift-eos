import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_GetInviteCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_GetInviteCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_GetInviteCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_GETINVITECOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_GetInviteCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_GETINVITECOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
