import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_QueryExternalAccountMappingsTests: XCTestCase {
    public func testEOS_Connect_QueryExternalAccountMappings_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_QueryExternalAccountMappings = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.ExternalAccountIds)
            XCTAssertEqual(Options!.pointee.ExternalAccountIdCount, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Connect_QueryExternalAccountMappings") }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryExternalAccountMappings(
            LocalUserId: nil,
            AccountIdType: .init(rawValue: .zero)!,
            ExternalAccountIds: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_QueryExternalAccountMappings"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
