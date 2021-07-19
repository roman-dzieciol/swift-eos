import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetSanctionsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetSanctionsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetSanctionsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetSanctionsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Sanctions_Actor? = object.GetSanctionsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetSanctionsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
