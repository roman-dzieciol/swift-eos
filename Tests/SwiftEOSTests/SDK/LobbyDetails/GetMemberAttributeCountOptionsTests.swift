import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_GetMemberAttributeCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_GetMemberAttributeCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_GetMemberAttributeCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_GetMemberAttributeCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
