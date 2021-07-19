import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardRecordCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardRecordCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_GetLeaderboardRecordCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_GetLeaderboardRecordCount")
            return .zero }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetLeaderboardRecordCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_GetLeaderboardRecordCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
