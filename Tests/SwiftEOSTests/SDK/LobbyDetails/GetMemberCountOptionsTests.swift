import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbyDetails_GetMemberCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_GetMemberCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_GetMemberCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_GetMemberCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
