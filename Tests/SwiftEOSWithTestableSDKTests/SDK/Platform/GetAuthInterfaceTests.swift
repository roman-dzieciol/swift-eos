import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetAuthInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetAuthInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetAuthInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetAuthInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Auth_Actor? = object.GetAuthInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetAuthInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
