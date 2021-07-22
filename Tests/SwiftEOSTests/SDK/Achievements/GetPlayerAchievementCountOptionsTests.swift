import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_GetPlayerAchievementCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_GetPlayerAchievementCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_GetPlayerAchievementCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_GetPlayerAchievementCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId) }
    }
}
