import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_StatThresholdsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_StatThresholds() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_StatThresholds.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_STATTHRESHOLDS_API_LATEST)
            XCTAssertNil(cstruct.Name)
            XCTAssertEqual(cstruct.Threshold, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_StatThresholds(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_STATTHRESHOLDS_API_LATEST)
            XCTAssertNil(swiftObject.Name)
            XCTAssertEqual(swiftObject.Threshold, .zero) }
    }
}
