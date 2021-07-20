import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId = { Handle, Options, OutLeaderboardDefinition in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST)
                XCTAssertNil(Options!.pointee.LeaderboardId)
                XCTAssertNotNil(OutLeaderboardDefinition)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_Definition? = try object.CopyLeaderboardDefinitionByLeaderboardId(LeaderboardId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId"])
            XCTAssertNil(result)
        }
    }
}
