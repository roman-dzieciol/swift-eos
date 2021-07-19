import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardDefinitionByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardDefinitionByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_CopyLeaderboardDefinitionByIndex = { Handle, Options, OutLeaderboardDefinition in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.LeaderboardIndex, .zero)
            XCTAssertNil(OutLeaderboardDefinition)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardDefinitionByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_Definition? = try object.CopyLeaderboardDefinitionByIndex(LeaderboardIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardDefinitionByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
