import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferImageInfoByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferImageInfoByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyOfferImageInfoByIndex = { Handle, Options, OutImageInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.OfferId)
            XCTAssertEqual(Options!.pointee.ImageInfoIndex, .zero)
            XCTAssertNil(OutImageInfo)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyOfferImageInfoByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_KeyImageInfo? = try object.CopyOfferImageInfoByIndex(
            LocalUserId: nil,
            OfferId: nil,
            ImageInfoIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyOfferImageInfoByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
