import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardRecordCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardRecordCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_GetLeaderboardRecordCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Leaderboards_GetLeaderboardRecordCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDRECORDCOUNT_API_LATEST)
                return .zero
            }
            defer { __on_EOS_Leaderboards_GetLeaderboardRecordCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetLeaderboardRecordCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardRecordCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardRecordCount"])
    }
}
