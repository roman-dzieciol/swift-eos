import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_DuplicateFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_DuplicateFile_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_DuplicateFile = { Handle, DuplicateOptions, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(DuplicateOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(DuplicateOptions!.pointee.LocalUserId)
            XCTAssertNil(DuplicateOptions!.pointee.SourceFilename)
            XCTAssertNil(DuplicateOptions!.pointee.DestinationFilename)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_DuplicateFile") }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.DuplicateFile(
            LocalUserId: nil,
            SourceFilename: nil,
            DestinationFilename: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_DuplicateFile"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionCallback"])
    }
}
