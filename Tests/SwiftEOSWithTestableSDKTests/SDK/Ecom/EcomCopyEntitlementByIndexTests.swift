import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyEntitlementByIndex = { Handle, Options, OutEntitlement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.EntitlementIndex, .zero)
            XCTAssertNil(OutEntitlement)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyEntitlementByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_Entitlement? = try object.CopyEntitlementByIndex(
            LocalUserId: nil,
            EntitlementIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyEntitlementByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
