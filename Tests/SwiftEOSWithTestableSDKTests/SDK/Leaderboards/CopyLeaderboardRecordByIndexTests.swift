import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardRecordByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_CopyLeaderboardRecordByIndex = { Handle, Options, OutLeaderboardRecord in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.LeaderboardRecordIndex, .zero)
            XCTAssertNil(OutLeaderboardRecord)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardRecordByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_LeaderboardRecord? = try object.CopyLeaderboardRecordByIndex(LeaderboardRecordIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
