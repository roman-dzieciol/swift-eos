import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_QueryActivePlayerSanctionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptions(sdkObject: cstruct) }
    }
}
