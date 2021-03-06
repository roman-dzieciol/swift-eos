import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardDefinitionByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardDefinitionByIndex = { Handle, Options, OutLeaderboardDefinition in
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardDefinitionByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDDEFINITIONBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.LeaderboardIndex, .zero)
                XCTAssertNotNil(OutLeaderboardDefinition)
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardDefinitionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLeaderboardDefinitionByIndex(LeaderboardIndex: .zero)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByIndex"])
    }
}
