import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId = { Handle, Options, OutLeaderboardDefinition in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYLEADERBOARDID_API_LATEST)
                XCTAssertNil(Options!.pointee.LeaderboardId)
                XCTAssertNotNil(OutLeaderboardDefinition)
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLeaderboardDefinitionByLeaderboardId(LeaderboardId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId"])
    }
}
