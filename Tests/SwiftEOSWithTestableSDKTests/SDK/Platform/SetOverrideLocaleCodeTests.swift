import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_SetOverrideLocaleCodeTests: XCTestCase {
    public func testEOS_Platform_SetOverrideLocaleCode_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_SetOverrideLocaleCode = { Handle, NewLocaleCode in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(NewLocaleCode)
            TestGlobals.sdkReceived.append("EOS_Platform_SetOverrideLocaleCode")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetOverrideLocaleCode(NewLocaleCode: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_SetOverrideLocaleCode"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
