import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetProductUserIdMappingTests: XCTestCase {
    public func testEOS_Connect_GetProductUserIdMapping_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_GetProductUserIdMapping = { Handle, Options, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.TargetProductUserId)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Connect_GetProductUserIdMapping")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetProductUserIdMapping(
            LocalUserId: nil,
            AccountIdType: .init(rawValue: .zero)!,
            TargetProductUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_GetProductUserIdMapping"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
