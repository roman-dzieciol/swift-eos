import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetEcomInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetEcomInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetEcomInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetEcomInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_Actor? = object.GetEcomInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetEcomInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
