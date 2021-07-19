import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetSessionsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetSessionsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetSessionsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetSessionsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Sessions_Actor? = object.GetSessionsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetSessionsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
