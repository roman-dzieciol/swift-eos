import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsTests: XCTestCase {
    public func testEOS_Leaderboards_QueryLeaderboardDefinitions_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_QueryLeaderboardDefinitions = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Leaderboards_QueryLeaderboardDefinitions")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_QUERYLEADERBOARDDEFINITIONS_API_LATEST)
                XCTAssertEqual(Options!.pointee.StartTime, .zero)
                XCTAssertEqual(Options!.pointee.EndTime, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_Leaderboards_QueryLeaderboardDefinitions = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryLeaderboardDefinitions(
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
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardDefinitions"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardDefinitions"])
    }
}
