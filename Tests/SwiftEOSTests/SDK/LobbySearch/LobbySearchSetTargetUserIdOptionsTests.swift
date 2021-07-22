import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbySearch_SetTargetUserIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_SetTargetUserIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_SetTargetUserIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_SetTargetUserIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
