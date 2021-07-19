import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetFriendsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetFriendsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetFriendsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetFriendsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Friends_Actor? = object.GetFriendsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetFriendsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
