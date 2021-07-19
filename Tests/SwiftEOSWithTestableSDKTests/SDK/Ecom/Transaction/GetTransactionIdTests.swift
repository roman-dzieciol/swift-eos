import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_Transaction_GetTransactionIdTests: XCTestCase {
    public func testEOS_Ecom_Transaction_GetTransactionId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_Transaction_GetTransactionId = { Handle, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Ecom_Transaction_GetTransactionId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.Transaction_GetTransactionId()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_Transaction_GetTransactionId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
