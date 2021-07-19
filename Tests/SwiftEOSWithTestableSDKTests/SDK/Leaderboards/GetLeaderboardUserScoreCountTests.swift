import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardUserScoreCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_GetLeaderboardUserScoreCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.StatName)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_GetLeaderboardUserScoreCount")
            return .zero }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetLeaderboardUserScoreCount(StatName: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_GetLeaderboardUserScoreCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
