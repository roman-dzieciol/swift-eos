import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
