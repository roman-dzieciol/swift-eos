import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetRTCInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetRTCInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetRTCInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetRTCInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_RTC_Actor? = object.GetRTCInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetRTCInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
