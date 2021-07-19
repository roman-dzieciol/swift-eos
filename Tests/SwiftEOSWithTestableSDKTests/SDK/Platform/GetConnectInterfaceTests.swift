import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetConnectInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetConnectInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetConnectInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetConnectInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Connect_Actor? = object.GetConnectInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetConnectInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
