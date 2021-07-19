import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetExternalAccountMappingTests: XCTestCase {
    public func testEOS_Connect_GetExternalAccountMapping_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_GetExternalAccountMapping = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.TargetExternalUserId)
            TestGlobals.sdkReceived.append("EOS_Connect_GetExternalAccountMapping")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ProductUserId = try object.GetExternalAccountMapping(
            LocalUserId: nil,
            AccountIdType: .init(rawValue: .zero)!,
            TargetExternalUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_GetExternalAccountMapping"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
