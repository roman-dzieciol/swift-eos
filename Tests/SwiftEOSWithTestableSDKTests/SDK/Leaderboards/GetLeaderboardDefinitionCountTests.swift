import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardDefinitionCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_GetLeaderboardDefinitionCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_GetLeaderboardDefinitionCount")
            return .zero }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetLeaderboardDefinitionCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_GetLeaderboardDefinitionCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
