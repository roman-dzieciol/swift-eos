import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferById_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyOfferById = { Handle, Options, OutOffer in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.OfferId)
            XCTAssertNil(OutOffer)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyOfferById")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_CatalogOffer? = try object.CopyOfferById(
            LocalUserId: nil,
            OfferId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyOfferById"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
