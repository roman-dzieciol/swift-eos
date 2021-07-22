import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionSearch_SetParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_SetParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_SetParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Parameter)
            XCTAssertEqual(cstruct.ComparisonOp, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_SetParameterOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Parameter)
            XCTAssertEqual(swiftObject.ComparisonOp, .zero) }
    }
}
