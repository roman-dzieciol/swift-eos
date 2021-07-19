import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_QueryFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_QueryFile_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_QueryFile = { Handle, QueryFileOptions, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(QueryFileOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(QueryFileOptions!.pointee.LocalUserId)
            XCTAssertNil(QueryFileOptions!.pointee.Filename)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_QueryFile") }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryFile(
            LocalUserId: nil,
            Filename: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_QueryFile"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionCallback"])
    }
}
