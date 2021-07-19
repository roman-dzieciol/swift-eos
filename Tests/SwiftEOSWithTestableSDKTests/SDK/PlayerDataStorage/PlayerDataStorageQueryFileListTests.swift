import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_QueryFileListTests: XCTestCase {
    public func testEOS_PlayerDataStorage_QueryFileList_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_QueryFileList = { Handle, QueryFileListOptions, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(QueryFileListOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(QueryFileListOptions!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_QueryFileList") }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryFileList(
            LocalUserId: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.FileCount, .zero)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_QueryFileList"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionCallback"])
    }
}
