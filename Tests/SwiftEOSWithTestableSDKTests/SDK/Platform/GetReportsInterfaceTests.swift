import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetReportsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetReportsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetReportsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetReportsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Reports_Actor? = object.GetReportsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetReportsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
