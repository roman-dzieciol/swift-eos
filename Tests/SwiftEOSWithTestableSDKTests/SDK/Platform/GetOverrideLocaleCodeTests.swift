import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetOverrideLocaleCodeTests: XCTestCase {
    public func testEOS_Platform_GetOverrideLocaleCode_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetOverrideLocaleCode = { Handle, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Platform_GetOverrideLocaleCode")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetOverrideLocaleCode()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetOverrideLocaleCode"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
