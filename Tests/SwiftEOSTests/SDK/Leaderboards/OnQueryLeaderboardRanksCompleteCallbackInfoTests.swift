import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
