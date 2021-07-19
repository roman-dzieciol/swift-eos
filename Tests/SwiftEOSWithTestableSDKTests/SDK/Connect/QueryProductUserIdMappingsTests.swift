import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_QueryProductUserIdMappingsTests: XCTestCase {
    public func testEOS_Connect_QueryProductUserIdMappings_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_QueryProductUserIdMappings = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.AccountIdType_DEPRECATED, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.ProductUserIds)
            XCTAssertEqual(Options!.pointee.ProductUserIdCount, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Connect_QueryProductUserIdMappings") }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryProductUserIdMappings(
            LocalUserId: nil,
            AccountIdType_DEPRECATED: .init(rawValue: .zero)!,
            ProductUserIds: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_QueryProductUserIdMappings"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
