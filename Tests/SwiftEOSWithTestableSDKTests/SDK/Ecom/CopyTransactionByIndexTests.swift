import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyTransactionByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyTransactionByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyTransactionByIndex = { Handle, Options, OutTransaction in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.TransactionIndex, .zero)
            XCTAssertNil(OutTransaction)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyTransactionByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_Ecom_HTransaction? = try object.CopyTransactionByIndex(
            LocalUserId: nil,
            TransactionIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyTransactionByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
