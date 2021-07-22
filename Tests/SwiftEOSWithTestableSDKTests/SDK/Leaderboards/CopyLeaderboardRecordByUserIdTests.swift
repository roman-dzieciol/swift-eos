import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardRecordByUserId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardRecordByUserId = { Handle, Options, OutLeaderboardRecord in
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardRecordByUserId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYUSERID_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertNotNil(OutLeaderboardRecord)
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardRecordByUserId = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLeaderboardRecordByUserId(UserId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByUserId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByUserId"])
    }
}
