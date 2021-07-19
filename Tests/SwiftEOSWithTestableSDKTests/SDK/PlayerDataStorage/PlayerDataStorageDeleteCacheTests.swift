import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_DeleteCacheTests: XCTestCase {
    public func testEOS_PlayerDataStorage_DeleteCache_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_DeleteCache = { Handle, Options, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_DeleteCache")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.DeleteCache(
            LocalUserId: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_DeleteCache"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionCallback"])
    }
}