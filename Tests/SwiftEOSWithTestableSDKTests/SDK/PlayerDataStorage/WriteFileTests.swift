import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_WriteFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_WriteFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_WriteFile = { Handle, WriteOptions, ClientData, CompletionCallback in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_WriteFile")
                XCTAssertNil(Handle)
                XCTAssertEqual(WriteOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_WRITEFILEOPTIONS_API_LATEST)
                XCTAssertNil(WriteOptions!.pointee.LocalUserId)
                XCTAssertNil(WriteOptions!.pointee.Filename)
                XCTAssertEqual(WriteOptions!.pointee.ChunkLengthBytes, .zero)
                let resultOfWriteOptionsWriteFileDataCallback = WriteOptions!.pointee.WriteFileDataCallback?(
                    GTest.current.pointer(object: _tagEOS_PlayerDataStorage_WriteFileDataCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil,
                            DataBufferLengthBytes: .zero
                        )),
                    nil,
                    nil
                )
                XCTAssertEqual(resultOfWriteOptionsWriteFileDataCallback, .zero)
                WriteOptions!.pointee.FileTransferProgressCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_FileTransferProgressCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil,
                            BytesTransferred: .zero,
                            TotalFileSizeBytes: .zero
                        )))
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_WriteFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil
                        )))
                return nil
            }
            defer { __on_EOS_PlayerDataStorage_WriteFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HPlayerDataStorageFileTransferRequest? = try object.WriteFile(
                LocalUserId: nil,
                Filename: nil,
                ChunkLengthBytes: .zero,
                WriteFileDataCallback: { arg0, arg1, arg2 in
                    XCTAssertNotNil(arg0!.pointee.ClientData)
                    XCTAssertNil(arg0!.pointee.LocalUserId)
                    XCTAssertNil(arg0!.pointee.Filename)
                    XCTAssertEqual(arg0!.pointee.DataBufferLengthBytes, .zero)
                    XCTAssertNil(arg1)
                    XCTAssertNil(arg2)
                    GTest.current.sdkReceived.append("WriteFileDataCallback")
                    return .zero
                },
                FileTransferProgressCallback: { arg0 in
                    XCTAssertNotNil(arg0!.pointee.ClientData)
                    XCTAssertNil(arg0!.pointee.LocalUserId)
                    XCTAssertNil(arg0!.pointee.Filename)
                    XCTAssertEqual(arg0!.pointee.BytesTransferred, .zero)
                    XCTAssertEqual(arg0!.pointee.TotalFileSizeBytes, .zero)
                    GTest.current.sdkReceived.append("FileTransferProgressCallback")
                },
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.Filename)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_WriteFile", "WriteFileDataCallback", "FileTransferProgressCallback"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_WriteFile", "WriteFileDataCallback", "FileTransferProgressCallback"])
    }
}
