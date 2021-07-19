import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId = { Handle, Options, OutLeaderboardDefinition in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LeaderboardId)
            XCTAssertNil(OutLeaderboardDefinition)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_Definition? = try object.CopyLeaderboardDefinitionByLeaderboardId(LeaderboardId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByLeaderboardId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
