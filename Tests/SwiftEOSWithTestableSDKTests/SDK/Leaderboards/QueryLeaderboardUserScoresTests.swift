import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_QueryLeaderboardUserScoresTests: XCTestCase {
    public func testEOS_Leaderboards_QueryLeaderboardUserScores_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_QueryLeaderboardUserScores = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserIds)
            XCTAssertEqual(Options!.pointee.UserIdsCount, .zero)
            XCTAssertNil(Options!.pointee.StatInfo)
            XCTAssertEqual(Options!.pointee.StatInfoCount, .zero)
            XCTAssertEqual(Options!.pointee.StartTime, .zero)
            XCTAssertEqual(Options!.pointee.EndTime, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_QueryLeaderboardUserScores") }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryLeaderboardUserScores(
            UserIds: nil,
            StatInfo: nil,
            StartTime: .zero,
            EndTime: .zero,
            LocalUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardUserScores"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
