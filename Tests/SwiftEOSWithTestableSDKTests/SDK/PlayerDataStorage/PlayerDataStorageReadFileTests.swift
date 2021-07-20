import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_ReadFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_ReadFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForReadFileDataCallback = expectation(description: "waitForReadFileDataCallback")
            let waitForFileTransferProgressCallback = expectation(description: "waitForFileTransferProgressCallback")
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_ReadFile = { Handle, ReadOptions, ClientData, CompletionCallback in
                XCTAssertNil(Handle)
                XCTAssertEqual(ReadOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_READFILEOPTIONS_API_LATEST)
                XCTAssertNil(ReadOptions!.pointee.LocalUserId)
                XCTAssertNil(ReadOptions!.pointee.Filename)
                XCTAssertEqual(ReadOptions!.pointee.ReadChunkLengthBytes, .zero)
                XCTAssertNil(ReadOptions!.pointee.ReadFileDataCallback)
                XCTAssertNil(ReadOptions!.pointee.FileTransferProgressCallback)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_ReadFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil
                        )))
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_ReadFile")
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
                ReadFileDataCallback: nil,
                FileTransferProgressCallback: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.Filename)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_ReadFile"])
            wait(for: [waitForReadFileDataCallback], timeout: 0.5)
            wait(for: [waitForFileTransferProgressCallback], timeout: 0.5)
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_ReadFile"])
    }
}
