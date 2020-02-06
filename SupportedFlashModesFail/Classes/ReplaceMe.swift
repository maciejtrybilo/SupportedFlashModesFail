import AVFoundation

class Thing {
    
    var photoOutput: AVCapturePhotoOutput!
    var captureDevice: AVCaptureDevice!
    
    func function() {
        
        // any of the lines below break `pod lib lint`
        _ = photoOutput.supportedFlashModes
        _ = photoOutput.availablePhotoPixelFormatTypes
        _ = photoOutput.availableRawPhotoPixelFormatTypes
        
        _ = captureDevice.formats.first?.supportedColorSpaces
        
        // but the line below doesn't break anything
        _ = photoOutput.availablePhotoCodecTypes
    }
}
