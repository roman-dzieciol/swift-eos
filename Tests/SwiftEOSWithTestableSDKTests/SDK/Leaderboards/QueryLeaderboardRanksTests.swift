import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_QueryLeaderboardRanksTests: XCTestCase {
    public func testEOS_Leaderboards_QueryLeaderboardRanks_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_QueryLeaderboardRanks = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_QUERYLEADERBOARDRANKS_API_LATEST)
                XCTAssertNil(Options!.pointee.LeaderboardId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Leaderboards_OnQueryLeaderboardRanksCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_QueryLeaderboardRanks")
            }
            defer { __on_EOS_Leaderboards_QueryLeaderboardRanks = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryLeaderboardRanks(
                LeaderboardId: nil,
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardRanks"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
