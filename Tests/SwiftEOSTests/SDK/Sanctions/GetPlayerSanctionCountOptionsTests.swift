import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sanctions_GetPlayerSanctionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_GetPlayerSanctionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_GetPlayerSanctionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sanctions_GetPlayerSanctionCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
