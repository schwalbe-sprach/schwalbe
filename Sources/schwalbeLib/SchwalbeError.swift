import Foundation

public enum SchwalbeError: Error {
    case noInputFiles
    case noSchwalbeFiles
    case fileReadFailure(String)
}

extension SchwalbeError {
    public var text: String {
        guard let lang = Locale.current.languageCode else {
            return ""
        }

        switch lang.lowercased() {
        case "de":
            switch self {
            case .noInputFiles: return "Keine Input-Dateien."
            case .noSchwalbeFiles: return "Keine *.schwalbe Dateien zum Verarbeiten gefunden."
            case .fileReadFailure(let file): return "Konnte \(file) nicht lesen."
            }
        default:
            switch self {
            case .noInputFiles: return "No input files."
            case .noSchwalbeFiles: return "Found no *.schwalbe files to process."
            case .fileReadFailure(let file): return "Failed to read \(file)."
            }
        }
    }
}
