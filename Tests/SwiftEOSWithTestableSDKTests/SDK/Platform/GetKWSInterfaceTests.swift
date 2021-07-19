import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetKWSInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetKWSInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetKWSInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetKWSInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_KWS_Actor? = object.GetKWSInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetKWSInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
