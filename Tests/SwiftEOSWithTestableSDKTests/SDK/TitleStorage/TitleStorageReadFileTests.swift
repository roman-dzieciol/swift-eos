import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_ReadFileTests: XCTestCase {
    public func testEOS_TitleStorage_ReadFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForReadFileDataCallback = expectation(description: "waitForReadFileDataCallback")
            let waitForFileTransferProgressCallback = expectation(description: "waitForFileTransferProgressCallback")
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_ReadFile = { Handle, Options, ClientData, CompletionCallback in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Filename)
                XCTAssertEqual(Options!.pointee.ReadChunkLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.ReadFileDataCallback)
                XCTAssertNil(Options!.pointee.FileTransferProgressCallback)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_TitleStorage_ReadFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            Filename: nil
                        )))
                GTest.current.sdkReceived.append("EOS_TitleStorage_ReadFile")
                return nil
            }
            defer { __on_EOS_TitleStorage_ReadFile = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HTitleStorageFileTransferRequest? = try object.ReadFile(
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
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_ReadFile"])
            wait(for: [waitForReadFileDataCallback], timeout: 0.5)
            wait(for: [waitForFileTransferProgressCallback], timeout: 0.5)
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_ReadFile"])
    }
}
