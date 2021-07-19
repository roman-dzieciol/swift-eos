import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardRecordByUserIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardRecordByUserId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_CopyLeaderboardRecordByUserId = { Handle, Options, OutLeaderboardRecord in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            XCTAssertNil(OutLeaderboardRecord)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardRecordByUserId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_LeaderboardRecord? = try object.CopyLeaderboardRecordByUserId(UserId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardRecordByUserId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
