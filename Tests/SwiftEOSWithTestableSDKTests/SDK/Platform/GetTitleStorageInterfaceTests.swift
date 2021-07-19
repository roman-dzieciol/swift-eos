import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetTitleStorageInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetTitleStorageInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetTitleStorageInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetTitleStorageInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_TitleStorage_Actor? = object.GetTitleStorageInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetTitleStorageInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
