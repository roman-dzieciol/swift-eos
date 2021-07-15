import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sanctions_GetPlayerSanctionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_GetPlayerSanctionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_GetPlayerSanctionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Sanctions_GetPlayerSanctionCountOptions(sdkObject: cstruct) }
    }
}
