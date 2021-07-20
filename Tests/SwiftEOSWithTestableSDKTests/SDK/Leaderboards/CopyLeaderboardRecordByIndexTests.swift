import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardRecordByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardRecordByIndex = { Handle, Options, OutLeaderboardRecord in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDRECORDBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.LeaderboardRecordIndex, .zero)
                XCTAssertNotNil(OutLeaderboardRecord)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardRecordByIndex")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardRecordByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_LeaderboardRecord? = try object.CopyLeaderboardRecordByIndex(LeaderboardRecordIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByIndex"])
            XCTAssertNil(result)
        }
    }
}
