import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_ReadFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_ReadFile_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_ReadFile = { Handle, ReadOptions, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(ReadOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(ReadOptions!.pointee.LocalUserId)
            XCTAssertNil(ReadOptions!.pointee.Filename)
            XCTAssertEqual(ReadOptions!.pointee.ReadChunkLengthBytes, .zero)
            XCTAssertNil(ReadOptions!.pointee.ReadFileDataCallback)
            XCTAssertNil(ReadOptions!.pointee.FileTransferProgressCallback)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_ReadFile")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HPlayerDataStorageFileTransferRequest = try object.ReadFile(
            LocalUserId: nil,
            Filename: nil,
            ReadChunkLengthBytes: .zero,
            ReadFileDataCallback: nil,
            FileTransferProgressCallback: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.Filename)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_ReadFile"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["ReadFileDataCallback", "FileTransferProgressCallback", "CompletionCallback"])
    }
}
