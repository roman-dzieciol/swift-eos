import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_RemoveParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_RemoveParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_RemoveParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertNil(cstruct.Key)
            XCTAssertEqual(cstruct.ComparisonOp, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_RemoveParameterOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertNil(swiftObject.Key)
            XCTAssertEqual(swiftObject.ComparisonOp, .zero) }
    }
}
