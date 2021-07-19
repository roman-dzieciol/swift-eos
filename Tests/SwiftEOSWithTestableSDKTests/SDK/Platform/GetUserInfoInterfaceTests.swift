import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetUserInfoInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetUserInfoInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetUserInfoInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetUserInfoInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_UserInfo_Actor? = object.GetUserInfoInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetUserInfoInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
