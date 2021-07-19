import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_WriteFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_WriteFile_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForWriteFileDataCallback = expectation(description: "waitForWriteFileDataCallback")
            let waitForFileTransferProgressCallback = expectation(description: "waitForFileTransferProgressCallback")
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_WriteFile = { Handle, WriteOptions, ClientData, CompletionCallback in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(WriteOptions!.pointee.ApiVersion, .zero)
                XCTAssertNil(WriteOptions!.pointee.LocalUserId)
                XCTAssertNil(WriteOptions!.pointee.Filename)
                XCTAssertEqual(WriteOptions!.pointee.ChunkLengthBytes, .zero)
                XCTAssertNil(WriteOptions!.pointee.WriteFileDataCallback)
                XCTAssertNil(WriteOptions!.pointee.FileTransferProgressCallback)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(TestGlobals.current.pointer(object: _tagEOS_PlayerDataStorage_WriteFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            Filename: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorage_WriteFile")
                return .nonZeroPointer
            }
            defer { __on_EOS_PlayerDataStorage_WriteFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HPlayerDataStorageFileTransferRequest = try object.WriteFile(
                LocalUserId: nil,
                Filename: nil,
                ChunkLengthBytes: .zero,
                WriteFileDataCallback: nil,
                FileTransferProgressCallback: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.Filename)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorage_WriteFile"])
            wait(for: [waitForWriteFileDataCallback], timeout: 0.5)
            wait(for: [waitForFileTransferProgressCallback], timeout: 0.5)
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertNil(result)
        }
    }
}
