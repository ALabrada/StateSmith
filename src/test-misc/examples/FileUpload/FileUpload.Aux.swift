import Foundation

extension FileUpload {
    static let maxChunkSize = 64_000

    static func hasAttachment(_ message: ChatRoomMessage?) -> Bool {
        message?.attachment != nil
    }   

    static func hasResourceId(_ message: ChatRoomMessage?) -> Bool {
        guard let attachment = message?.attachment else { return false }
        return !attachment.resourceId.isEmpty
    }

    func cleanupCache() {
        // ...
    }

    func deleteResource() {
        // ...
    }

    func cacheAttachment() {
        // ...
    }

    func createResource() {
        // ...
    }

    func notifyAttachmentCreated() {
        // ...
    }

    func calculateFileSize() {
        // ...
    }

    func resetUploadStatus() {
        vars.fileOffset = 0
        vars.chunkSize = min(vars.fileSize, maxChunkSize)
    }

    func sendFileChunk() {
        // ...
    }

    func updateUploadStatus(_ size: Int) {
        vars.fileOffset += size
        vars.chunkSize = min(vars.fileSize, maxChunkSize)
    }

    func notifyUploadProgress() {
        // ...
    }

    func sendMessage() {
        // ...
    }

    func notifyMessageSent() {
        // ...
    }
}