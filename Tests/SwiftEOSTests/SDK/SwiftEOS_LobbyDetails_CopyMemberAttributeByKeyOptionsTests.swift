import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.AttrKey)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.AttrKey) }
    }
}
