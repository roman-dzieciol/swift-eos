import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_QueryLeaderboardUserScoresTests: XCTestCase {
    public func testEOS_Leaderboards_QueryLeaderboardUserScores_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_QueryLeaderboardUserScores = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Leaderboards_QueryLeaderboardUserScores")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_QUERYLEADERBOARDUSERSCORES_API_LATEST)
                XCTAssertNil(Options!.pointee.UserIds)
                XCTAssertEqual(Options!.pointee.UserIdsCount, .zero)
                XCTAssertNil(Options!.pointee.StatInfo)
                XCTAssertEqual(Options!.pointee.StatInfoCount, .zero)
                XCTAssertEqual(Options!.pointee.StartTime, .zero)
                XCTAssertEqual(Options!.pointee.EndTime, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Leaderboards_OnQueryLeaderboardUserScoresCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_Leaderboards_QueryLeaderboardUserScores = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryLeaderboardUserScores(
                UserIds: nil,
                StatInfo: nil,
                StartTime: .zero,
                EndTime: .zero,
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardUserScores"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardUserScores"])
    }
}
