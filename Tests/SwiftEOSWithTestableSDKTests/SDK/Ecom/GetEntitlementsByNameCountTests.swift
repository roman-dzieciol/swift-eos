import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetEntitlementsByNameCountTests: XCTestCase {
    public func testEOS_Ecom_GetEntitlementsByNameCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_GetEntitlementsByNameCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.EntitlementName)
            TestGlobals.sdkReceived.append("EOS_Ecom_GetEntitlementsByNameCount")
            return .zero }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetEntitlementsByNameCount(
            LocalUserId: nil,
            EntitlementName: nil
        )
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_GetEntitlementsByNameCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
