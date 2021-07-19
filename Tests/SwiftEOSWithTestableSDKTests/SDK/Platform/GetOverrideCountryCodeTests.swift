import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetOverrideCountryCodeTests: XCTestCase {
    public func testEOS_Platform_GetOverrideCountryCode_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetOverrideCountryCode = { Handle, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Platform_GetOverrideCountryCode")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetOverrideCountryCode()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetOverrideCountryCode"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
