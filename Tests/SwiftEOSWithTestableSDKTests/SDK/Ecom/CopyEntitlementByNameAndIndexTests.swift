import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByNameAndIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementByNameAndIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyEntitlementByNameAndIndex = { Handle, Options, OutEntitlement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.EntitlementName)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            XCTAssertNil(OutEntitlement)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyEntitlementByNameAndIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_Entitlement? = try object.CopyEntitlementByNameAndIndex(
            LocalUserId: nil,
            EntitlementName: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyEntitlementByNameAndIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
