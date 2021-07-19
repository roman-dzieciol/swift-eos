import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_SetOverrideCountryCodeTests: XCTestCase {
    public func testEOS_Platform_SetOverrideCountryCode_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_SetOverrideCountryCode = { Handle, NewCountryCode in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(NewCountryCode)
            TestGlobals.sdkReceived.append("EOS_Platform_SetOverrideCountryCode")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetOverrideCountryCode(NewCountryCode: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_SetOverrideCountryCode"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
