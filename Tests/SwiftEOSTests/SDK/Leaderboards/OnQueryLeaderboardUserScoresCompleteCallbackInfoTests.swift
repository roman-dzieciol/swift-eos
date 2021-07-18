import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!) }
    }
}
