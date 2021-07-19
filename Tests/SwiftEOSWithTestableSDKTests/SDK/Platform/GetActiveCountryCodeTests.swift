import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetActiveCountryCodeTests: XCTestCase {
    public func testEOS_Platform_GetActiveCountryCode_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetActiveCountryCode = { Handle, LocalUserId, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(LocalUserId)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Platform_GetActiveCountryCode")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetActiveCountryCode(LocalUserId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetActiveCountryCode"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
