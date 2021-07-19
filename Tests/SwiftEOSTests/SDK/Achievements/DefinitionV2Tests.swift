import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_DefinitionV2Tests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_DefinitionV2() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_DefinitionV2.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACHIEVEMENTS_DEFINITIONV2_API_LATEST)
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
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_DefinitionV2(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACHIEVEMENTS_DEFINITIONV2_API_LATEST)
            XCTAssertNil(swiftObject.AchievementId)
            XCTAssertNil(swiftObject.UnlockedDisplayName)
            XCTAssertNil(swiftObject.UnlockedDescription)
            XCTAssertNil(swiftObject.LockedDisplayName)
            XCTAssertNil(swiftObject.LockedDescription)
            XCTAssertNil(swiftObject.FlavorText)
            XCTAssertNil(swiftObject.UnlockedIconURL)
            XCTAssertNil(swiftObject.LockedIconURL)
            XCTAssertEqual(swiftObject.bIsHidden, false)
            XCTAssertNil(swiftObject.StatThresholds) }
    }
}
