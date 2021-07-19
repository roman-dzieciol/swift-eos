import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetUIInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetUIInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetUIInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetUIInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_UI_Actor? = object.GetUIInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetUIInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
