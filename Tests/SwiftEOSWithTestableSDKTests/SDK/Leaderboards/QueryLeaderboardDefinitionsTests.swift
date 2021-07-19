import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_QueryLeaderboardDefinitionsTests: XCTestCase {
    public func testEOS_Leaderboards_QueryLeaderboardDefinitions_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_QueryLeaderboardDefinitions = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.StartTime, .zero)
            XCTAssertEqual(Options!.pointee.EndTime, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_QueryLeaderboardDefinitions") }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryLeaderboardDefinitions(
            StartTime: .zero,
            EndTime: .zero,
            LocalUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_QueryLeaderboardDefinitions"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
