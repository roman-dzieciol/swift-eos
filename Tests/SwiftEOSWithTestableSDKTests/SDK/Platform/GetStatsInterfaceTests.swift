import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetStatsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetStatsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetStatsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetStatsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Stats_Actor? = object.GetStatsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetStatsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
