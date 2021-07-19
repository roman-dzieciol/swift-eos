import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexTests: XCTestCase {
    public func testEOS_Ecom_Transaction_CopyEntitlementByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_Transaction_CopyEntitlementByIndex = { Handle, Options, OutEntitlement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.EntitlementIndex, .zero)
            XCTAssertNil(OutEntitlement)
            TestGlobals.sdkReceived.append("EOS_Ecom_Transaction_CopyEntitlementByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_Entitlement? = try object.Transaction_CopyEntitlementByIndex(EntitlementIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_Transaction_CopyEntitlementByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
