import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sanctions_CopyPlayerSanctionByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_CopyPlayerSanctionByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.SanctionIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sanctions_CopyPlayerSanctionByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SANCTIONS_COPYPLAYERSANCTIONBYINDEX_API_LATEST)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.SanctionIndex, .zero) }
    }
}
