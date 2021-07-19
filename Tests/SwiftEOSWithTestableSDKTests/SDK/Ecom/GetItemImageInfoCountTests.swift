import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetItemImageInfoCountTests: XCTestCase {
    public func testEOS_Ecom_GetItemImageInfoCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_GetItemImageInfoCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.ItemId)
            TestGlobals.sdkReceived.append("EOS_Ecom_GetItemImageInfoCount")
            return .zero }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetItemImageInfoCount(
            LocalUserId: nil,
            ItemId: nil
        )
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_GetItemImageInfoCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
