import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardRecordByUserId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardRecordByUserId = { Handle, Options, OutLeaderboardRecord in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertNotNil(OutLeaderboardRecord)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardRecordByUserId")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardRecordByUserId = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_LeaderboardRecord? = try object.CopyLeaderboardRecordByUserId(UserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByUserId"])
            XCTAssertNil(result)
        }
    }
}
