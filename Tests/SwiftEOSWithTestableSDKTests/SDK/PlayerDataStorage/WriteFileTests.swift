import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_WriteFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_WriteFile_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_WriteFile = { Handle, WriteOptions, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(WriteOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(WriteOptions!.pointee.LocalUserId)
            XCTAssertNil(WriteOptions!.pointee.Filename)
            XCTAssertEqual(WriteOptions!.pointee.ChunkLengthBytes, .zero)
            XCTAssertNil(WriteOptions!.pointee.WriteFileDataCallback)
            XCTAssertNil(WriteOptions!.pointee.FileTransferProgressCallback)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_WriteFile")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HPlayerDataStorageFileTransferRequest = try object.WriteFile(
            LocalUserId: nil,
            Filename: nil,
            ChunkLengthBytes: .zero,
            WriteFileDataCallback: nil,
            FileTransferProgressCallback: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.Filename)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_WriteFile"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["WriteFileDataCallback", "FileTransferProgressCallback", "CompletionCallback"])
    }
}
