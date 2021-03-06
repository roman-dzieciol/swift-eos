import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_ReadFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_ReadFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_ReadFile = { Handle, ReadOptions, ClientData, CompletionCallback in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_ReadFile")
                XCTAssertNil(Handle)
                XCTAssertEqual(ReadOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_READFILEOPTIONS_API_LATEST)
                XCTAssertNil(ReadOptions!.pointee.LocalUserId)
                XCTAssertNil(ReadOptions!.pointee.Filename)
                XCTAssertEqual(ReadOptions!.pointee.ReadChunkLengthBytes, .zero)
                let resultOfReadOptionsReadFileDataCallback = ReadOptions!.pointee.ReadFileDataCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_ReadFileDataCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil,
                            TotalFileSizeBytes: .zero,
                            bIsLastChunk: .zero,
                            DataChunkLengthBytes: .zero,
                            DataChunk: nil
                        )))
                XCTAssertEqual(resultOfReadOptionsReadFileDataCallback, .zero)
                ReadOptions!.pointee.FileTransferProgressCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_FileTransferProgressCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil,
                            BytesTransferred: .zero,
                            TotalFileSizeBytes: .zero
                        )))
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_ReadFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil
                        )))
                return nil
            }
            defer { __on_EOS_PlayerDataStorage_ReadFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HPlayerDataStorageFileTransferRequest? = try object.ReadFile(
                LocalUserId: nil,
                Filename: nil,
                ReadChunkLengthBytes: .zero,
                ReadFileDataCallback: { arg0 in
                    XCTAssertNotNil(arg0!.pointee.ClientData)
                    XCTAssertNil(arg0!.pointee.LocalUserId)
                    XCTAssertNil(arg0!.pointee.Filename)
                    XCTAssertEqual(arg0!.pointee.TotalFileSizeBytes, .zero)
                    XCTAssertEqual(arg0!.pointee.bIsLastChunk, .zero)
                    XCTAssertEqual(arg0!.pointee.DataChunkLengthBytes, .zero)
                    XCTAssertNil(arg0!.pointee.DataChunk)
                    GTest.current.sdkReceived.append("ReadFileDataCallback")
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
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_ReadFile", "ReadFileDataCallback", "FileTransferProgressCallback"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_ReadFile", "ReadFileDataCallback", "FileTransferProgressCallback"])
    }
}
