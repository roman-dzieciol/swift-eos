import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetRTCAdminInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetRTCAdminInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetRTCAdminInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetRTCAdminInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_RTCAdmin_Actor? = object.GetRTCAdminInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetRTCAdminInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
