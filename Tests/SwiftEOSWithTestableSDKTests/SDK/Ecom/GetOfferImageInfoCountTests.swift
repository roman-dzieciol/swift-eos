import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetOfferImageInfoCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferImageInfoCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_GetOfferImageInfoCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.OfferId)
            TestGlobals.sdkReceived.append("EOS_Ecom_GetOfferImageInfoCount")
            return .zero }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetOfferImageInfoCount(
            LocalUserId: nil,
            OfferId: nil
        )
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_GetOfferImageInfoCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
