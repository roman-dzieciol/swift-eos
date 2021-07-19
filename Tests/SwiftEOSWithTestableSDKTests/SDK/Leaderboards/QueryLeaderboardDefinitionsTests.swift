import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsTests: XCTestCase {
    public func testEOS_Leaderboards_QueryLeaderboardDefinitions_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_QueryLeaderboardDefinitions = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.StartTime, .zero)
                XCTAssertEqual(Options!.pointee.EndTime, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Leaderboards_OnQueryLeaderboardDefinitionsCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_QueryLeaderboardDefinitions")
            }
            defer { __on_EOS_Leaderboards_QueryLeaderboardDefinitions = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
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
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardDefinitions"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
