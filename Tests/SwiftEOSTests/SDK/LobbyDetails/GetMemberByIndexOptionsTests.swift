import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbyDetails_GetMemberByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_GetMemberByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_GetMemberByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MemberIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_GetMemberByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.MemberIndex, .zero) }
    }
}
