import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetLeaderboardsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetLeaderboardsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetLeaderboardsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetLeaderboardsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_Actor? = object.GetLeaderboardsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetLeaderboardsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
