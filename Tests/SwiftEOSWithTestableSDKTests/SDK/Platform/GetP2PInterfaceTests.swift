import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetP2PInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetP2PInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetP2PInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetP2PInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_P2P_Actor? = object.GetP2PInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetP2PInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
