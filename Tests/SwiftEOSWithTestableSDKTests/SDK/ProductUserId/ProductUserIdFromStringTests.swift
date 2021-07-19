import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_FromStringTests: XCTestCase {
    public func testEOS_ProductUserId_FromString_Null() throws {
        TestGlobals.reset()
        __on_EOS_ProductUserId_FromString = { ProductUserIdString in
            XCTAssertNil(ProductUserIdString)
            TestGlobals.sdkReceived.append("EOS_ProductUserId_FromString")
            return OpaquePointer(bitPattern: Int(1))! }
        let result: EOS_ProductUserId = SwiftEOS_ProductUserId_FromString(ProductUserIdString: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ProductUserId_FromString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
