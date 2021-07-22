import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardRecordByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardRecordByIndex = { Handle, Options, OutLeaderboardRecord in
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardRecordByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.LeaderboardRecordIndex, .zero)
                XCTAssertNotNil(OutLeaderboardRecord)
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardRecordByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLeaderboardRecordByIndex(LeaderboardRecordIndex: .zero)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByIndex"])
    }
}
