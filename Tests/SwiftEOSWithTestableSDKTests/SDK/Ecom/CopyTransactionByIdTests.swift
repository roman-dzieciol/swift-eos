import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyTransactionByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyTransactionById_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyTransactionById = { Handle, Options, OutTransaction in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TransactionId)
            XCTAssertNil(OutTransaction)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyTransactionById")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_Ecom_HTransaction? = try object.CopyTransactionById(
            LocalUserId: nil,
            TransactionId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyTransactionById"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
