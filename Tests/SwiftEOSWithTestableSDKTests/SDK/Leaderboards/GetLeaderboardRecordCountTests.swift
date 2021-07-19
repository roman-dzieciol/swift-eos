import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardRecordCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardRecordCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_GetLeaderboardRecordCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDRECORDCOUNT_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_GetLeaderboardRecordCount")
                return .zero
            }
            defer { __on_EOS_Leaderboards_GetLeaderboardRecordCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetLeaderboardRecordCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardRecordCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
