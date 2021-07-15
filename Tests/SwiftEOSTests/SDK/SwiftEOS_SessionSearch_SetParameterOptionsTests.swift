import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_SetParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_SetParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_SetParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Parameter)
            XCTAssertEqual(cstruct.ComparisonOp, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_SessionSearch_SetParameterOptions(sdkObject: cstruct) }
    }
}
