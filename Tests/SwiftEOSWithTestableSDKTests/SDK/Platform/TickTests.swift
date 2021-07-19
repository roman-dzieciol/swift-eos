import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_TickTests: XCTestCase {
    public func testEOS_Platform_Tick_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_Tick = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_Tick") }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        object.Tick()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_Tick"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
