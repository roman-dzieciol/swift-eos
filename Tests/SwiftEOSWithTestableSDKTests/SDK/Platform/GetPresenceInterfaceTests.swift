import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetPresenceInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetPresenceInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetPresenceInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetPresenceInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Presence_Actor? = object.GetPresenceInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetPresenceInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
