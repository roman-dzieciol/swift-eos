import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_QueryActivePlayerSanctionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_QueryActivePlayerSanctionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sanctions_QueryActivePlayerSanctionsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
