import Foundation

func print(_ message: Message, suppress: Bool = false) {
    if !suppress {
        print(message.text())
    }
}

enum Message {
    case noInputFiles
    case noSchwalbeFiles
    case processing(file: String)
    case couldntRead(file: String)
    case writing(file: String)
    case finished

    func text(with locale: Locale = .current) -> String {
        guard let lang = locale.languageCode else {
            return ""
        }

        switch lang.lowercased() {
        case "de":
            switch self {
            case .noInputFiles: return "Keine Input-Dateien"
            case .noSchwalbeFiles: return "Keine *.schwalbe Dateien zum Verarbeiten gefunden."
            case .processing(let file): return "⚙️  Verarbeite \(file)"
            case .couldntRead(let file): return "Konnte \(file) Datei nicht lesen "
            case .writing(let file): return "Schreibe \(file)"
            case .finished: return "Fertig ✅"
            }
        default:
            switch self {
            case .noInputFiles: return "No input files"
            case .noSchwalbeFiles: return "Found no *.schwalbe files to process."
            case .processing(let file): return "⚙️  Processing \(file)"
            case .couldntRead(let file): return "Failed to read file at path \(file)"
            case .writing(let file): return "Writing \(file)"
            case .finished: return "All done ✅"
            }
        }
    }
}
