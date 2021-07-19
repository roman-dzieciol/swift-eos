import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetEntitlementsCountTests: XCTestCase {
    public func testEOS_Ecom_GetEntitlementsCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_GetEntitlementsCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_Ecom_GetEntitlementsCount")
            return .zero }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetEntitlementsCount(LocalUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_GetEntitlementsCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
