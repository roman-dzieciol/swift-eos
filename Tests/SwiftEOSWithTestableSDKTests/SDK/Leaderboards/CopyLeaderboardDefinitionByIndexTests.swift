import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardDefinitionByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardDefinitionByIndex = { Handle, Options, OutLeaderboardDefinition in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.LeaderboardIndex, .zero)
                XCTAssertNil(OutLeaderboardDefinition)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardDefinitionByIndex")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardDefinitionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_Definition? = try object.CopyLeaderboardDefinitionByIndex(LeaderboardIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByIndex"])
            XCTAssertNil(result)
        }
    }
}
