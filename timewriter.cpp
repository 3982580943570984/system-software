#include <chrono>
#include <cstdlib>
#include <fstream>
#include <print>

using namespace std::chrono;

int main()
{
    const auto path = std::getenv("TIMEWRITER_FILE");

    auto out = std::ofstream{path, std::ios::app};

    const auto utc = floor<seconds>(system_clock::now());
    const auto now = zoned_time{current_zone(), utc};

    std::println(out, "{:%F %T}", now);
}