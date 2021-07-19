import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetOfferItemCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferItemCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_GetOfferItemCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.OfferId)
            TestGlobals.sdkReceived.append("EOS_Ecom_GetOfferItemCount")
            return .zero }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetOfferItemCount(
            LocalUserId: nil,
            OfferId: nil
        )
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_GetOfferItemCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
