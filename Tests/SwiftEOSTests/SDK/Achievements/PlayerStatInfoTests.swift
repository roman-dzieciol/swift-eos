import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_PlayerStatInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_PlayerStatInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_PlayerStatInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_PLAYERSTATINFO_API_LATEST)
            XCTAssertNil(cstruct.Name)
            XCTAssertEqual(cstruct.CurrentValue, .zero)
            XCTAssertEqual(cstruct.ThresholdValue, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_PlayerStatInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_PLAYERSTATINFO_API_LATEST)
            XCTAssertNil(swiftObject.Name)
            XCTAssertEqual(swiftObject.CurrentValue, .zero)
            XCTAssertEqual(swiftObject.ThresholdValue, .zero) }
    }
}
