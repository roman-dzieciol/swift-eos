import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetAntiCheatServerInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetAntiCheatServerInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetAntiCheatServerInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetAntiCheatServerInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_AntiCheatServer_Actor? = object.GetAntiCheatServerInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetAntiCheatServerInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
