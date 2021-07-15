import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_DefinitionV2Tests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_DefinitionV2() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_DefinitionV2.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AchievementId)
            XCTAssertNil(cstruct.UnlockedDisplayName)
            XCTAssertNil(cstruct.UnlockedDescription)
            XCTAssertNil(cstruct.LockedDisplayName)
            XCTAssertNil(cstruct.LockedDescription)
            XCTAssertNil(cstruct.FlavorText)
            XCTAssertNil(cstruct.UnlockedIconURL)
            XCTAssertNil(cstruct.LockedIconURL)
            XCTAssertEqual(cstruct.bIsHidden, .zero)
            XCTAssertEqual(cstruct.StatThresholdsCount, .zero)
            XCTAssertNil(cstruct.StatThresholds)
            let swiftObject = try SwiftEOS_Achievements_DefinitionV2(sdkObject: cstruct) }
    }
}
