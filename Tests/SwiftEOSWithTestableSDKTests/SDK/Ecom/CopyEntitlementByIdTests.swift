import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementById_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyEntitlementById = { Handle, Options, OutEntitlement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.EntitlementId)
            XCTAssertNil(OutEntitlement)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyEntitlementById")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_Entitlement? = try object.CopyEntitlementById(
            LocalUserId: nil,
            EntitlementId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyEntitlementById"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
