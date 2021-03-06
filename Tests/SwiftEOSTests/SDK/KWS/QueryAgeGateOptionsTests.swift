import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_KWS_QueryAgeGateOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_QueryAgeGateOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_QueryAgeGateOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_QueryAgeGateOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
