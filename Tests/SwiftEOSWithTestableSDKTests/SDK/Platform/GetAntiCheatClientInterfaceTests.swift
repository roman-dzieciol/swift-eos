import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetAntiCheatClientInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetAntiCheatClientInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetAntiCheatClientInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetAntiCheatClientInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_AntiCheatClient_Actor? = object.GetAntiCheatClientInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetAntiCheatClientInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
