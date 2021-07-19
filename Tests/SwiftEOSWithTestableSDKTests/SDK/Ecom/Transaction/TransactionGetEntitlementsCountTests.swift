import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_Transaction_GetEntitlementsCountTests: XCTestCase {
    public func testEOS_Ecom_Transaction_GetEntitlementsCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_Transaction_GetEntitlementsCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_Ecom_Transaction_GetEntitlementsCount")
            return .zero }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.Transaction_GetEntitlementsCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_Transaction_GetEntitlementsCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
