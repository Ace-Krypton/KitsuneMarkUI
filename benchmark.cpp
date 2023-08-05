#include "benchmark.hpp"

Benchmark::Benchmark(QObject *parent) : QObject(parent) { }

void Benchmark::run(const QString &options, const QString &detect) {
    QString command = options;
    int result = std::system(command.toStdString().c_str());

    if (result != 0) {
        std::cout << "FIO benchmarking failed with exit code: " << result << std::endl;
        return;
    }

    if (result != 0) {
        std::cout << "FIO benchmarking failed with exit code: " << result << std::endl;
    } else {
        std::ifstream file("fio_results.txt");
        if (file) {
            std::string line;
            while (std::getline(file, line)) {
                _results.push_back(line);
            }
            file.close();
        } else {
            std::cout << "Failed to write FIO results to file.\n";
        }
    }

    std::remove("test");
    std::remove("fio_results.txt");

    QString bandwidth = extract_bandwidth(_results, detect);

    if (detect == "SREAD") {
        emit seqReadFinished(bandwidth);
    } else if (detect == "SWRITE") {
        emit seqWriteFinished(bandwidth);
    }
}

QString Benchmark::extract_bandwidth(std::vector<std::string> &results, const QString &detect) {
    for (std::string &logs : results) {
        std::string line;
        std::istringstream log_stream(logs);

        while (std::getline(log_stream, line)) {
            if (line.find(detect.toStdString().substr(1) + ": bw=") != std::string::npos) {
                size_t start = line.find('(') + 1;
                size_t end = line.find("MB/s", start);

                if (start != std::string::npos && end != std::string::npos) {
                    std::string bandwidth = line.substr(start, end - start);
                    results.clear();
                    return QString::fromStdString(bandwidth);
                }
            }
        }
    }

    return {};
}

std::vector<std::string> Benchmark::get_results() {
    return _results;
}

void Benchmark::start(const QString &command, const QString &detect) {
    _future = std::async(std::launch::async, &Benchmark::run, this, command, detect);
}

QString Benchmark::extract_qstring_from_variant(const QVariant &variant) const {
    if (variant.canConvert<QString>()) {
        return variant.toString();
    }

    return {};
}

void Benchmark::stop() {
    if (_future.valid()) {
        _future.wait();
    }
}
