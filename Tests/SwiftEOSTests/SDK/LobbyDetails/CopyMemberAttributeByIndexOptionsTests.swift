import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.AttrIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.AttrIndex, .zero) }
    }
}
