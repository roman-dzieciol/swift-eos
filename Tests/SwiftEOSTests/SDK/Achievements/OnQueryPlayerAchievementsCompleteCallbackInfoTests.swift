import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.UserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.UserId) }
    }
}
