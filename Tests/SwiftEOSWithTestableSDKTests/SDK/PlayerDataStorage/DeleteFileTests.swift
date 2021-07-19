import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_DeleteFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_DeleteFile_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_DeleteFile = { Handle, DeleteOptions, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(DeleteOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(DeleteOptions!.pointee.LocalUserId)
            XCTAssertNil(DeleteOptions!.pointee.Filename)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_DeleteFile") }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.DeleteFile(
            LocalUserId: nil,
            Filename: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_DeleteFile"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionCallback"])
    }
}
