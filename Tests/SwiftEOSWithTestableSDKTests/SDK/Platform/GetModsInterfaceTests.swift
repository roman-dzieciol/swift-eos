import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetModsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetModsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetModsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetModsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Mods_Actor? = object.GetModsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetModsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
